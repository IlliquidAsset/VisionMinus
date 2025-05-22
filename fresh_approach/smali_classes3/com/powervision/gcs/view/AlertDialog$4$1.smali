.class Lcom/powervision/gcs/view/AlertDialog$4$1;
.super Ljava/lang/Object;
.source "AlertDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/view/AlertDialog$4;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/powervision/gcs/view/AlertDialog$4;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/view/AlertDialog$4;)V
    .locals 0

    .line 173
    iput-object p1, p0, Lcom/powervision/gcs/view/AlertDialog$4$1;->this$1:Lcom/powervision/gcs/view/AlertDialog$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 176
    iget-object v0, p0, Lcom/powervision/gcs/view/AlertDialog$4$1;->this$1:Lcom/powervision/gcs/view/AlertDialog$4;

    iget-object v0, v0, Lcom/powervision/gcs/view/AlertDialog$4;->this$0:Lcom/powervision/gcs/view/AlertDialog;

    invoke-static {v0}, Lcom/powervision/gcs/view/AlertDialog;->access$100(Lcom/powervision/gcs/view/AlertDialog;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 177
    iget-object v0, p0, Lcom/powervision/gcs/view/AlertDialog$4$1;->this$1:Lcom/powervision/gcs/view/AlertDialog$4;

    iget-object v0, v0, Lcom/powervision/gcs/view/AlertDialog$4;->this$0:Lcom/powervision/gcs/view/AlertDialog;

    invoke-static {v0}, Lcom/powervision/gcs/view/AlertDialog;->access$200(Lcom/powervision/gcs/view/AlertDialog;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 178
    iget-object v0, p0, Lcom/powervision/gcs/view/AlertDialog$4$1;->this$1:Lcom/powervision/gcs/view/AlertDialog$4;

    iget-object v0, v0, Lcom/powervision/gcs/view/AlertDialog$4;->this$0:Lcom/powervision/gcs/view/AlertDialog;

    invoke-static {v0}, Lcom/powervision/gcs/view/AlertDialog;->access$200(Lcom/powervision/gcs/view/AlertDialog;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/gcs/view/AlertDialog$4$1;->this$1:Lcom/powervision/gcs/view/AlertDialog$4;

    iget-object v1, v1, Lcom/powervision/gcs/view/AlertDialog$4;->val$msg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    iget-object v0, p0, Lcom/powervision/gcs/view/AlertDialog$4$1;->this$1:Lcom/powervision/gcs/view/AlertDialog$4;

    iget-object v0, v0, Lcom/powervision/gcs/view/AlertDialog$4;->this$0:Lcom/powervision/gcs/view/AlertDialog;

    invoke-static {v0}, Lcom/powervision/gcs/view/AlertDialog;->access$400(Lcom/powervision/gcs/view/AlertDialog;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/gcs/view/AlertDialog$4$1;->this$1:Lcom/powervision/gcs/view/AlertDialog$4;

    iget-object v1, v1, Lcom/powervision/gcs/view/AlertDialog$4;->this$0:Lcom/powervision/gcs/view/AlertDialog;

    invoke-static {v1}, Lcom/powervision/gcs/view/AlertDialog;->access$300(Lcom/powervision/gcs/view/AlertDialog;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/powervision/gcs/R$string;->App_MediaLib_26:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
