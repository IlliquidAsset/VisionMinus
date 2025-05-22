.class Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage$4;
.super Ljava/lang/Object;
.source "PlatformPage.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;->onFinish()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;


# direct methods
.method constructor <init>(Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;)V
    .locals 0

    .line 220
    iput-object p1, p0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage$4;->this$0:Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 230
    iget-object p1, p0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage$4;->this$0:Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;

    invoke-static {p1}, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;->access$800(Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;)Ljava/lang/Runnable;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x2

    .line 236
    invoke-static {p1, v0}, Lcn/sharesdk/framework/ShareSDK;->logDemoEvent(ILcn/sharesdk/framework/Platform;)V

    goto :goto_0

    .line 238
    :cond_0
    iget-object p1, p0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage$4;->this$0:Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;

    invoke-static {p1}, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;->access$800(Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 239
    iget-object p1, p0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage$4;->this$0:Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;

    invoke-static {p1, v0}, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;->access$802(Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 242
    :goto_0
    iget-object p1, p0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage$4;->this$0:Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;->access$902(Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;Z)Z

    .line 243
    iget-object p1, p0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage$4;->this$0:Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;

    invoke-virtual {p1}, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;->finish()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
