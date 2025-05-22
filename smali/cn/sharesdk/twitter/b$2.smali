.class Lcn/sharesdk/twitter/b$2;
.super Ljava/lang/Thread;
.source "TwitterAuthorizeWebviewClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/twitter/b;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcn/sharesdk/twitter/b;


# direct methods
.method constructor <init>(Lcn/sharesdk/twitter/b;Ljava/lang/String;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcn/sharesdk/twitter/b$2;->b:Lcn/sharesdk/twitter/b;

    iput-object p2, p0, Lcn/sharesdk/twitter/b$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 49
    :try_start_0
    iget-object v0, p0, Lcn/sharesdk/twitter/b$2;->b:Lcn/sharesdk/twitter/b;

    iget-object v1, p0, Lcn/sharesdk/twitter/b$2;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/sharesdk/twitter/b;->onComplete(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 51
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
