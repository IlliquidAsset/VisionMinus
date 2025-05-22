.class Lcn/powervision/upgrade/activity/AfterSaleListActivity$1;
.super Ljava/lang/Object;
.source "AfterSaleListActivity.java"

# interfaces
.implements Lcom/powervision/base/utils/WifiSsidutil$WifiSsidCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/powervision/upgrade/activity/AfterSaleListActivity;->initView(Landroid/os/Bundle;)V
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

    .line 65
    iput-object p1, p0, Lcn/powervision/upgrade/activity/AfterSaleListActivity$1;->this$0:Lcn/powervision/upgrade/activity/AfterSaleListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSsidCallBack()V
    .locals 1

    .line 68
    iget-object v0, p0, Lcn/powervision/upgrade/activity/AfterSaleListActivity$1;->this$0:Lcn/powervision/upgrade/activity/AfterSaleListActivity;

    invoke-static {v0}, Lcn/powervision/upgrade/activity/AfterSaleListActivity;->access$000(Lcn/powervision/upgrade/activity/AfterSaleListActivity;)V

    return-void
.end method

.method public onWifiDisconnect()V
    .locals 0

    return-void
.end method
