.class Lcn/sharesdk/sina/weibo/g$3;
.super Lcom/mob/tools/RxMob$Subscriber;
.source "WebSharePage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/sina/weibo/g;->b()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mob/tools/RxMob$Subscriber<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcn/sharesdk/sina/weibo/g;


# direct methods
.method constructor <init>(Lcn/sharesdk/sina/weibo/g;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcn/sharesdk/sina/weibo/g$3;->a:Lcn/sharesdk/sina/weibo/g;

    invoke-direct {p0}, Lcom/mob/tools/RxMob$Subscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2

    .line 180
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/g$3;->a:Lcn/sharesdk/sina/weibo/g;

    invoke-static {v0}, Lcn/sharesdk/sina/weibo/g;->c(Lcn/sharesdk/sina/weibo/g;)Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lcn/sharesdk/sina/weibo/g$3;->a:Lcn/sharesdk/sina/weibo/g;

    invoke-static {v1, p1}, Lcn/sharesdk/sina/weibo/g;->b(Lcn/sharesdk/sina/weibo/g;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public onCompleted()V
    .locals 0

    .line 184
    invoke-super {p0}, Lcom/mob/tools/RxMob$Subscriber;->onCompleted()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 188
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    .line 189
    iget-object p1, p0, Lcn/sharesdk/sina/weibo/g$3;->a:Lcn/sharesdk/sina/weibo/g;

    invoke-static {p1}, Lcn/sharesdk/sina/weibo/g;->c(Lcn/sharesdk/sina/weibo/g;)Landroid/webkit/WebView;

    move-result-object p1

    iget-object v0, p0, Lcn/sharesdk/sina/weibo/g$3;->a:Lcn/sharesdk/sina/weibo/g;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/sharesdk/sina/weibo/g;->b(Lcn/sharesdk/sina/weibo/g;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 174
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcn/sharesdk/sina/weibo/g$3;->a(Ljava/lang/String;)V

    return-void
.end method

.method public onStart()V
    .locals 0

    .line 176
    invoke-super {p0}, Lcom/mob/tools/RxMob$Subscriber;->onStart()V

    return-void
.end method
