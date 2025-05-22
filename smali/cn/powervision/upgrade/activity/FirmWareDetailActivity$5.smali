.class Lcn/powervision/upgrade/activity/FirmWareDetailActivity$5;
.super Ljava/lang/Object;
.source "FirmWareDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/powervision/upgrade/activity/FirmWareDetailActivity;->initView(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/powervision/upgrade/activity/FirmWareDetailActivity;

.field final synthetic val$download_or_upgrade_type:I


# direct methods
.method constructor <init>(Lcn/powervision/upgrade/activity/FirmWareDetailActivity;I)V
    .locals 0

    .line 278
    iput-object p1, p0, Lcn/powervision/upgrade/activity/FirmWareDetailActivity$5;->this$0:Lcn/powervision/upgrade/activity/FirmWareDetailActivity;

    iput p2, p0, Lcn/powervision/upgrade/activity/FirmWareDetailActivity$5;->val$download_or_upgrade_type:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 281
    iget p1, p0, Lcn/powervision/upgrade/activity/FirmWareDetailActivity$5;->val$download_or_upgrade_type:I

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 283
    iget-object p1, p0, Lcn/powervision/upgrade/activity/FirmWareDetailActivity$5;->this$0:Lcn/powervision/upgrade/activity/FirmWareDetailActivity;

    invoke-static {p1}, Lcn/powervision/upgrade/activity/FirmWareDetailActivity;->access$000(Lcn/powervision/upgrade/activity/FirmWareDetailActivity;)I

    move-result v1

    invoke-virtual {p1, v1, v0}, Lcn/powervision/upgrade/activity/FirmWareDetailActivity;->toDownLoadActivity(IZ)V

    goto :goto_0

    :cond_0
    if-ne p1, v0, :cond_1

    .line 287
    iget-object p1, p0, Lcn/powervision/upgrade/activity/FirmWareDetailActivity$5;->this$0:Lcn/powervision/upgrade/activity/FirmWareDetailActivity;

    invoke-static {p1}, Lcn/powervision/upgrade/activity/FirmWareDetailActivity;->access$000(Lcn/powervision/upgrade/activity/FirmWareDetailActivity;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcn/powervision/upgrade/activity/FirmWareDetailActivity;->clickUpgrade(I)V

    :cond_1
    :goto_0
    return-void
.end method
