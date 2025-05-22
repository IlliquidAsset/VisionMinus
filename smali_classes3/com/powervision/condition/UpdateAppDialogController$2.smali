.class Lcom/powervision/condition/UpdateAppDialogController$2;
.super Ljava/lang/Object;
.source "UpdateAppDialogController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/condition/UpdateAppDialogController;->showCommonDialog(Landroid/content/Context;Landroidx/appcompat/app/AlertDialog$Builder;Ljava/lang/Object;Landroid/content/DialogInterface$OnDismissListener;)V
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

    .line 69
    iput-object p1, p0, Lcom/powervision/condition/UpdateAppDialogController$2;->this$0:Lcom/powervision/condition/UpdateAppDialogController;

    iput-object p2, p0, Lcom/powervision/condition/UpdateAppDialogController$2;->val$object:Ljava/lang/Object;

    iput-object p3, p0, Lcom/powervision/condition/UpdateAppDialogController$2;->val$onDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 72
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "click witch:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "lzqApp"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_1

    .line 75
    iget-object p1, p0, Lcom/powervision/condition/UpdateAppDialogController$2;->val$object:Ljava/lang/Object;

    instance-of p1, p1, Landroid/app/Activity;

    if-eqz p1, :cond_0

    .line 76
    new-instance p1, Lcom/powervision/base/utils/AppUtils;

    invoke-direct {p1}, Lcom/powervision/base/utils/AppUtils;-><init>()V

    .line 77
    iget-object p2, p0, Lcom/powervision/condition/UpdateAppDialogController$2;->val$object:Ljava/lang/Object;

    check-cast p2, Landroid/app/Activity;

    iget-object v0, p0, Lcom/powervision/condition/UpdateAppDialogController$2;->val$onDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {p1, p2, v0}, Lcom/powervision/base/utils/AppUtils;->jumpToGooglePlay(Landroid/app/Activity;Landroid/content/DialogInterface$OnDismissListener;)Z

    goto :goto_0

    .line 79
    :cond_0
    new-instance p1, Lcom/powervision/base/utils/AppUtils;

    invoke-direct {p1}, Lcom/powervision/base/utils/AppUtils;-><init>()V

    .line 80
    iget-object p2, p0, Lcom/powervision/condition/UpdateAppDialogController$2;->val$object:Ljava/lang/Object;

    check-cast p2, Landroidx/fragment/app/Fragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    iget-object v0, p0, Lcom/powervision/condition/UpdateAppDialogController$2;->val$onDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {p1, p2, v0}, Lcom/powervision/base/utils/AppUtils;->jumpToGooglePlay(Landroid/app/Activity;Landroid/content/DialogInterface$OnDismissListener;)Z

    goto :goto_0

    .line 86
    :cond_1
    iget-object p1, p0, Lcom/powervision/condition/UpdateAppDialogController$2;->this$0:Lcom/powervision/condition/UpdateAppDialogController;

    iget-object p1, p1, Lcom/powervision/condition/UpdateAppDialogController;->baseEventListener:Lcom/powervision/base/listener/BaseEventListener;

    if-eqz p1, :cond_2

    .line 87
    iget-object p1, p0, Lcom/powervision/condition/UpdateAppDialogController$2;->this$0:Lcom/powervision/condition/UpdateAppDialogController;

    iget-object p1, p1, Lcom/powervision/condition/UpdateAppDialogController;->baseEventListener:Lcom/powervision/base/listener/BaseEventListener;

    const/4 p2, 0x2

    invoke-interface {p1, p2}, Lcom/powervision/base/listener/BaseEventListener;->event(I)V

    :cond_2
    :goto_0
    return-void
.end method
