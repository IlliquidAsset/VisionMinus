.class final Lcom/powervision/gcs/view/DialogUtils$3;
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
.field final synthetic val$dlg:Landroidx/appcompat/app/AlertDialog;


# direct methods
.method constructor <init>(Landroidx/appcompat/app/AlertDialog;)V
    .locals 0

    .line 446
    iput-object p1, p0, Lcom/powervision/gcs/view/DialogUtils$3;->val$dlg:Landroidx/appcompat/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 449
    iget-object p1, p0, Lcom/powervision/gcs/view/DialogUtils$3;->val$dlg:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->dismiss()V

    return-void
.end method
