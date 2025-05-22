.class Lcn/powervision/upgrade/activity/AfterSaleListActivity$3;
.super Ljava/lang/Object;
.source "AfterSaleListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/powervision/upgrade/activity/AfterSaleListActivity;->tipsInternet()V
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

    .line 126
    iput-object p1, p0, Lcn/powervision/upgrade/activity/AfterSaleListActivity$3;->this$0:Lcn/powervision/upgrade/activity/AfterSaleListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 129
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcn/powervision/upgrade/activity/AfterSaleListActivity$3;->this$0:Lcn/powervision/upgrade/activity/AfterSaleListActivity;

    iget-object v1, v1, Lcn/powervision/upgrade/activity/AfterSaleListActivity;->rootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 131
    iget-object v1, p0, Lcn/powervision/upgrade/activity/AfterSaleListActivity$3;->this$0:Lcn/powervision/upgrade/activity/AfterSaleListActivity;

    iget-object v1, v1, Lcn/powervision/upgrade/activity/AfterSaleListActivity;->rootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcn/powervision/upgrade/R$string;->AP03_Upgrade_58_s:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 133
    sget v1, Lcn/powervision/upgrade/R$string;->AP03_GeneralSetting_11:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    const/4 v1, 0x0

    .line 134
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 135
    iget-object v1, p0, Lcn/powervision/upgrade/activity/AfterSaleListActivity$3;->this$0:Lcn/powervision/upgrade/activity/AfterSaleListActivity;

    iget-object v1, v1, Lcn/powervision/upgrade/activity/AfterSaleListActivity;->rootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcn/powervision/upgrade/R$string;->AP03_TakeoffAndlanding_18:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcn/powervision/upgrade/activity/AfterSaleListActivity$3$1;

    invoke-direct {v2, p0}, Lcn/powervision/upgrade/activity/AfterSaleListActivity$3$1;-><init>(Lcn/powervision/upgrade/activity/AfterSaleListActivity$3;)V

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 143
    iget-object v1, p0, Lcn/powervision/upgrade/activity/AfterSaleListActivity$3;->this$0:Lcn/powervision/upgrade/activity/AfterSaleListActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, v1, Lcn/powervision/upgrade/activity/AfterSaleListActivity;->tipsDialog:Landroidx/appcompat/app/AlertDialog;

    .line 144
    iget-object v0, p0, Lcn/powervision/upgrade/activity/AfterSaleListActivity$3;->this$0:Lcn/powervision/upgrade/activity/AfterSaleListActivity;

    iget-object v0, v0, Lcn/powervision/upgrade/activity/AfterSaleListActivity;->tipsDialog:Landroidx/appcompat/app/AlertDialog;

    new-instance v1, Lcn/powervision/upgrade/activity/AfterSaleListActivity$3$2;

    invoke-direct {v1, p0}, Lcn/powervision/upgrade/activity/AfterSaleListActivity$3$2;-><init>(Lcn/powervision/upgrade/activity/AfterSaleListActivity$3;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    const-string v0, "lzqDia"

    const-string v1, "show"

    .line 150
    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcn/powervision/upgrade/activity/AfterSaleListActivity$3;->this$0:Lcn/powervision/upgrade/activity/AfterSaleListActivity;

    iget-object v0, v0, Lcn/powervision/upgrade/activity/AfterSaleListActivity;->tipsDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->show()V

    return-void
.end method
