.class Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage$2;
.super Ljava/lang/Object;
.source "PlatformPage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;->showEditPage(Lcn/sharesdk/framework/Platform;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;

.field final synthetic val$platform:Lcn/sharesdk/framework/Platform;


# direct methods
.method constructor <init>(Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;Lcn/sharesdk/framework/Platform;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage$2;->this$0:Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;

    iput-object p2, p0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage$2;->val$platform:Lcn/sharesdk/framework/Platform;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 153
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage$2;->this$0:Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;

    invoke-static {v0}, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;->access$000(Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;)Z

    move-result v0

    .line 154
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage$2;->val$platform:Lcn/sharesdk/framework/Platform;

    instance-of v2, v1, Lcn/sharesdk/framework/CustomPlatform;

    .line 155
    iget-object v3, p0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage$2;->this$0:Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;

    invoke-static {v3, v1}, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;->access$100(Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;Lcn/sharesdk/framework/Platform;)Z

    move-result v1

    if-nez v0, :cond_2

    if-nez v2, :cond_2

    if-eqz v1, :cond_0

    goto :goto_0

    .line 159
    :cond_0
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage$2;->this$0:Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;

    iget-object v1, p0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage$2;->val$platform:Lcn/sharesdk/framework/Platform;

    invoke-static {v0, v1}, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;->access$300(Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/framework/Platform$ShareParams;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v1, 0x3

    .line 166
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage$2;->val$platform:Lcn/sharesdk/framework/Platform;

    invoke-static {v1, v2}, Lcn/sharesdk/framework/ShareSDK;->logDemoEvent(ILcn/sharesdk/framework/Platform;)V

    const/4 v1, 0x1

    .line 167
    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/Platform$ShareParams;->setOpenCustomEven(Z)V

    .line 168
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage$2;->this$0:Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;

    invoke-static {v1}, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;->access$400(Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;)Lcn/sharesdk/onekeyshare/ShareContentCustomizeCallback;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 169
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage$2;->this$0:Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;

    invoke-static {v1}, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;->access$500(Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;)Lcn/sharesdk/onekeyshare/ShareContentCustomizeCallback;

    move-result-object v1

    iget-object v2, p0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage$2;->val$platform:Lcn/sharesdk/framework/Platform;

    invoke-interface {v1, v2, v0}, Lcn/sharesdk/onekeyshare/ShareContentCustomizeCallback;->onShare(Lcn/sharesdk/framework/Platform;Lcn/sharesdk/framework/Platform$ShareParams;)V

    .line 171
    :cond_1
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage$2;->this$0:Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;

    invoke-static {v1}, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;->access$700(Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;)Lcn/sharesdk/onekeyshare/themes/classic/ClassicTheme;

    move-result-object v1

    iget-object v2, p0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage$2;->this$0:Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;

    invoke-static {v2}, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;->access$600(Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;)Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage$2;->val$platform:Lcn/sharesdk/framework/Platform;

    invoke-virtual {v1, v2, v3, v0}, Lcn/sharesdk/onekeyshare/themes/classic/ClassicTheme;->showEditPage(Landroid/content/Context;Lcn/sharesdk/framework/Platform;Lcn/sharesdk/framework/Platform$ShareParams;)V

    goto :goto_1

    .line 157
    :cond_2
    :goto_0
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage$2;->this$0:Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;

    iget-object v1, p0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage$2;->val$platform:Lcn/sharesdk/framework/Platform;

    invoke-static {v0, v1}, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;->access$200(Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;Lcn/sharesdk/framework/Platform;)V

    :cond_3
    :goto_1
    return-void
.end method
