.class Lcn/sharesdk/sina/weibo/f$2;
.super Ljava/lang/Object;
.source "WebAuthPage.java"

# interfaces
.implements Lcom/mob/tools/RxMob$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/sina/weibo/f;->c()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/mob/tools/RxMob$OnSubscribe<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcn/sharesdk/sina/weibo/f;


# direct methods
.method constructor <init>(Lcn/sharesdk/sina/weibo/f;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lcn/sharesdk/sina/weibo/f$2;->a:Lcn/sharesdk/sina/weibo/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/mob/tools/RxMob$Subscriber;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mob/tools/RxMob$Subscriber<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 180
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/f$2;->a:Lcn/sharesdk/sina/weibo/f;

    invoke-static {v0}, Lcn/sharesdk/sina/weibo/f;->c(Lcn/sharesdk/sina/weibo/f;)Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lcn/sharesdk/sina/weibo/f$2;->a:Lcn/sharesdk/sina/weibo/f;

    invoke-static {v1}, Lcn/sharesdk/sina/weibo/f;->f(Lcn/sharesdk/sina/weibo/f;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 181
    invoke-virtual {p1}, Lcom/mob/tools/RxMob$Subscriber;->onCompleted()V

    return-void
.end method
