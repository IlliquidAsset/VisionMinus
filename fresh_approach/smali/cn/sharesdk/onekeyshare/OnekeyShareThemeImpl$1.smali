.class Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl$1;
.super Ljava/lang/Object;
.source "OnekeyShareThemeImpl.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->toast(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;

.field final synthetic val$resOrName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;Ljava/lang/String;)V
    .locals 0

    .line 379
    iput-object p1, p0, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl$1;->this$0:Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;

    iput-object p2, p0, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl$1;->val$resOrName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 2

    .line 381
    iget-object p1, p0, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl$1;->this$0:Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;

    iget-object p1, p1, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->context:Landroid/content/Context;

    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl$1;->val$resOrName:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x0

    if-lez p1, :cond_0

    .line 383
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl$1;->this$0:Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;

    iget-object v1, v1, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->context:Landroid/content/Context;

    invoke-static {v1, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 385
    :cond_0
    iget-object p1, p0, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl$1;->this$0:Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;

    iget-object p1, p1, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->context:Landroid/content/Context;

    iget-object v1, p0, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl$1;->val$resOrName:Ljava/lang/String;

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return v0
.end method
