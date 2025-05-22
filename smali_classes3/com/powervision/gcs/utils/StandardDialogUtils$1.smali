.class Lcom/powervision/gcs/utils/StandardDialogUtils$1;
.super Ljava/lang/Object;
.source "StandardDialogUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/utils/StandardDialogUtils;->noMessageDialog(Landroid/app/Activity;ILandroid/content/DialogInterface$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/utils/StandardDialogUtils;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/utils/StandardDialogUtils;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/powervision/gcs/utils/StandardDialogUtils$1;->this$0:Lcom/powervision/gcs/utils/StandardDialogUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 51
    iget-object p1, p0, Lcom/powervision/gcs/utils/StandardDialogUtils$1;->this$0:Lcom/powervision/gcs/utils/StandardDialogUtils;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/powervision/gcs/utils/StandardDialogUtils;->nomessagedia:Landroidx/appcompat/app/AlertDialog;

    return-void
.end method
