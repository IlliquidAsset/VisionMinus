.class final Lcom/powervision/gcs/view/DialogUtils$4;
.super Ljava/lang/Object;
.source "DialogUtils.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/view/DialogUtils;->createTipDialog(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/powervision/gcs/view/DialogUtils$OnClickListener;Lcom/powervision/gcs/view/DialogUtils$OnClickListener;)Landroidx/appcompat/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$cancelBtnClicked:Lcom/powervision/gcs/view/DialogUtils$OnClickListener;

.field final synthetic val$dlg:Landroidx/appcompat/app/AlertDialog;

.field final synthetic val$yesBtn:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/view/DialogUtils$OnClickListener;Landroid/widget/TextView;Landroidx/appcompat/app/AlertDialog;)V
    .locals 0

    .line 453
    iput-object p1, p0, Lcom/powervision/gcs/view/DialogUtils$4;->val$cancelBtnClicked:Lcom/powervision/gcs/view/DialogUtils$OnClickListener;

    iput-object p2, p0, Lcom/powervision/gcs/view/DialogUtils$4;->val$yesBtn:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/powervision/gcs/view/DialogUtils$4;->val$dlg:Landroidx/appcompat/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 456
    iget-object p1, p0, Lcom/powervision/gcs/view/DialogUtils$4;->val$cancelBtnClicked:Lcom/powervision/gcs/view/DialogUtils$OnClickListener;

    iget-object v0, p0, Lcom/powervision/gcs/view/DialogUtils$4;->val$yesBtn:Landroid/widget/TextView;

    invoke-interface {p1, v0}, Lcom/powervision/gcs/view/DialogUtils$OnClickListener;->onClick(Landroid/view/View;)V

    .line 457
    iget-object p1, p0, Lcom/powervision/gcs/view/DialogUtils$4;->val$dlg:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->dismiss()V

    return-void
.end method
