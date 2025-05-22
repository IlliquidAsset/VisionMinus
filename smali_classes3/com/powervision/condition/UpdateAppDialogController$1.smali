.class Lcom/powervision/condition/UpdateAppDialogController$1;
.super Ljava/lang/Object;
.source "UpdateAppDialogController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/condition/UpdateAppDialogController;->showForceDialog(Landroid/content/Context;Landroidx/appcompat/app/AlertDialog$Builder;Ljava/lang/Object;Landroid/content/DialogInterface$OnDismissListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/condition/UpdateAppDialogController;

.field final synthetic val$object:Ljava/lang/Object;

.field final synthetic val$onDismissListener:Landroid/content/DialogInterface$OnDismissListener;


# direct methods
.method constructor <init>(Lcom/powervision/condition/UpdateAppDialogController;Ljava/lang/Object;Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/powervision/condition/UpdateAppDialogController$1;->this$0:Lcom/powervision/condition/UpdateAppDialogController;

    iput-object p2, p0, Lcom/powervision/condition/UpdateAppDialogController$1;->val$object:Ljava/lang/Object;

    iput-object p3, p0, Lcom/powervision/condition/UpdateAppDialogController$1;->val$onDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    if-nez p2, :cond_1

    .line 53
    iget-object p1, p0, Lcom/powervision/condition/UpdateAppDialogController$1;->val$object:Ljava/lang/Object;

    instance-of p1, p1, Landroid/app/Activity;

    if-eqz p1, :cond_0

    .line 54
    new-instance p1, Lcom/powervision/base/utils/AppUtils;

    invoke-direct {p1}, Lcom/powervision/base/utils/AppUtils;-><init>()V

    .line 55
    iget-object p2, p0, Lcom/powervision/condition/UpdateAppDialogController$1;->val$object:Ljava/lang/Object;

    check-cast p2, Landroid/app/Activity;

    iget-object v0, p0, Lcom/powervision/condition/UpdateAppDialogController$1;->val$onDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {p1, p2, v0}, Lcom/powervision/base/utils/AppUtils;->jumpToGooglePlay(Landroid/app/Activity;Landroid/content/DialogInterface$OnDismissListener;)Z

    goto :goto_0

    .line 57
    :cond_0
    new-instance p1, Lcom/powervision/base/utils/AppUtils;

    invoke-direct {p1}, Lcom/powervision/base/utils/AppUtils;-><init>()V

    .line 58
    iget-object p2, p0, Lcom/powervision/condition/UpdateAppDialogController$1;->val$object:Ljava/lang/Object;

    check-cast p2, Landroidx/fragment/app/Fragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    iget-object v0, p0, Lcom/powervision/condition/UpdateAppDialogController$1;->val$onDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {p1, p2, v0}, Lcom/powervision/base/utils/AppUtils;->jumpToGooglePlay(Landroid/app/Activity;Landroid/content/DialogInterface$OnDismissListener;)Z

    :cond_1
    :goto_0
    return-void
.end method
