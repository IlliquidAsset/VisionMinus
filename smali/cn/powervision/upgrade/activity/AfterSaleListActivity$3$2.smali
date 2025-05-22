.class Lcn/powervision/upgrade/activity/AfterSaleListActivity$3$2;
.super Ljava/lang/Object;
.source "AfterSaleListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/powervision/upgrade/activity/AfterSaleListActivity$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/powervision/upgrade/activity/AfterSaleListActivity$3;


# direct methods
.method constructor <init>(Lcn/powervision/upgrade/activity/AfterSaleListActivity$3;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcn/powervision/upgrade/activity/AfterSaleListActivity$3$2;->this$1:Lcn/powervision/upgrade/activity/AfterSaleListActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 147
    iget-object p1, p0, Lcn/powervision/upgrade/activity/AfterSaleListActivity$3$2;->this$1:Lcn/powervision/upgrade/activity/AfterSaleListActivity$3;

    iget-object p1, p1, Lcn/powervision/upgrade/activity/AfterSaleListActivity$3;->this$0:Lcn/powervision/upgrade/activity/AfterSaleListActivity;

    const/4 v0, 0x0

    iput-object v0, p1, Lcn/powervision/upgrade/activity/AfterSaleListActivity;->tipsDialog:Landroidx/appcompat/app/AlertDialog;

    return-void
.end method
