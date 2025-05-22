.class final Lcom/powervision/gcs/view/DialogUtils$8;
.super Ljava/lang/Object;
.source "DialogUtils.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/view/DialogUtils;->createNewUiDialog(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/powervision/gcs/view/DialogUtils$OnClickListener;Lcom/powervision/gcs/view/DialogUtils$OnClickListener;)Landroidx/appcompat/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$cancelBtn:Landroid/widget/TextView;

.field final synthetic val$cancelBtnClicked:Lcom/powervision/gcs/view/DialogUtils$OnClickListener;

.field final synthetic val$dlg:Landroidx/appcompat/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/view/DialogUtils$OnClickListener;Landroid/widget/TextView;Landroidx/appcompat/app/AlertDialog;)V
    .locals 0

    .line 603
    iput-object p1, p0, Lcom/powervision/gcs/view/DialogUtils$8;->val$cancelBtnClicked:Lcom/powervision/gcs/view/DialogUtils$OnClickListener;

    iput-object p2, p0, Lcom/powervision/gcs/view/DialogUtils$8;->val$cancelBtn:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/powervision/gcs/view/DialogUtils$8;->val$dlg:Landroidx/appcompat/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 606
    iget-object p1, p0, Lcom/powervision/gcs/view/DialogUtils$8;->val$cancelBtnClicked:Lcom/powervision/gcs/view/DialogUtils$OnClickListener;

    iget-object v0, p0, Lcom/powervision/gcs/view/DialogUtils$8;->val$cancelBtn:Landroid/widget/TextView;

    invoke-interface {p1, v0}, Lcom/powervision/gcs/view/DialogUtils$OnClickListener;->onClick(Landroid/view/View;)V

    .line 607
    iget-object p1, p0, Lcom/powervision/gcs/view/DialogUtils$8;->val$dlg:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->dismiss()V

    return-void
.end method
