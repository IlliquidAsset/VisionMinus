.class Lcn/powervision/upgrade/activity/AfterSaleListActivity$4;
.super Ljava/lang/Object;
.source "AfterSaleListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/powervision/upgrade/activity/AfterSaleListActivity;->retry()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/powervision/upgrade/activity/AfterSaleListActivity;


# direct methods
.method constructor <init>(Lcn/powervision/upgrade/activity/AfterSaleListActivity;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lcn/powervision/upgrade/activity/AfterSaleListActivity$4;->this$0:Lcn/powervision/upgrade/activity/AfterSaleListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v0, "lzqWeb"

    const-string v1, "retry in"

    .line 163
    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Lcn/powervision/upgrade/activity/AfterSaleListActivity$4;->this$0:Lcn/powervision/upgrade/activity/AfterSaleListActivity;

    invoke-static {v0}, Lcn/powervision/upgrade/activity/AfterSaleListActivity;->access$100(Lcn/powervision/upgrade/activity/AfterSaleListActivity;)Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/powervision/upgrade/activity/AfterSaleListActivity$4;->this$0:Lcn/powervision/upgrade/activity/AfterSaleListActivity;

    invoke-virtual {v0}, Lcn/powervision/upgrade/activity/AfterSaleListActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 165
    iget-object v0, p0, Lcn/powervision/upgrade/activity/AfterSaleListActivity$4;->this$0:Lcn/powervision/upgrade/activity/AfterSaleListActivity;

    invoke-static {v0}, Lcn/powervision/upgrade/activity/AfterSaleListActivity;->access$100(Lcn/powervision/upgrade/activity/AfterSaleListActivity;)Landroid/webkit/WebView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://www.powervision.me/app/about.html?language="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/powervision/upgrade/activity/AfterSaleListActivity$4;->this$0:Lcn/powervision/upgrade/activity/AfterSaleListActivity;

    iget-object v2, v2, Lcn/powervision/upgrade/activity/AfterSaleListActivity;->mLanguage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
