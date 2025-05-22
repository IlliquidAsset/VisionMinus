.class Lcn/powervision/upgrade/activity/FirmWareDetailActivity$7;
.super Ljava/lang/Object;
.source "FirmWareDetailActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/powervision/upgrade/activity/FirmWareDetailActivity;->showTipsAboutFlow(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/powervision/upgrade/activity/FirmWareDetailActivity;

.field final synthetic val$device:I


# direct methods
.method constructor <init>(Lcn/powervision/upgrade/activity/FirmWareDetailActivity;I)V
    .locals 0

    .line 540
    iput-object p1, p0, Lcn/powervision/upgrade/activity/FirmWareDetailActivity$7;->this$0:Lcn/powervision/upgrade/activity/FirmWareDetailActivity;

    iput p2, p0, Lcn/powervision/upgrade/activity/FirmWareDetailActivity$7;->val$device:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 543
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 544
    iget-object p1, p0, Lcn/powervision/upgrade/activity/FirmWareDetailActivity$7;->this$0:Lcn/powervision/upgrade/activity/FirmWareDetailActivity;

    iget p2, p0, Lcn/powervision/upgrade/activity/FirmWareDetailActivity$7;->val$device:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcn/powervision/upgrade/activity/FirmWareDetailActivity;->toDownLoadActivity(IZ)V

    return-void
.end method
