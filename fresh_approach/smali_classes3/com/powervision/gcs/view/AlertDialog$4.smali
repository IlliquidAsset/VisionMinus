.class Lcom/powervision/gcs/view/AlertDialog$4;
.super Ljava/lang/Object;
.source "AlertDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/view/AlertDialog;->setPositiveButton2(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/powervision/gcs/view/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/view/AlertDialog;

.field final synthetic val$listener:Landroid/view/View$OnClickListener;

.field final synthetic val$msg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/view/AlertDialog;Landroid/view/View$OnClickListener;Ljava/lang/String;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/powervision/gcs/view/AlertDialog$4;->this$0:Lcom/powervision/gcs/view/AlertDialog;

    iput-object p2, p0, Lcom/powervision/gcs/view/AlertDialog$4;->val$listener:Landroid/view/View$OnClickListener;

    iput-object p3, p0, Lcom/powervision/gcs/view/AlertDialog$4;->val$msg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 169
    iget-object v0, p0, Lcom/powervision/gcs/view/AlertDialog$4;->this$0:Lcom/powervision/gcs/view/AlertDialog;

    invoke-static {v0}, Lcom/powervision/gcs/view/AlertDialog;->access$100(Lcom/powervision/gcs/view/AlertDialog;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 170
    iget-object v0, p0, Lcom/powervision/gcs/view/AlertDialog$4;->this$0:Lcom/powervision/gcs/view/AlertDialog;

    invoke-static {v0}, Lcom/powervision/gcs/view/AlertDialog;->access$200(Lcom/powervision/gcs/view/AlertDialog;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 171
    iget-object v0, p0, Lcom/powervision/gcs/view/AlertDialog$4;->val$listener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 172
    iget-object p1, p0, Lcom/powervision/gcs/view/AlertDialog$4;->this$0:Lcom/powervision/gcs/view/AlertDialog;

    invoke-static {p1}, Lcom/powervision/gcs/view/AlertDialog;->access$400(Lcom/powervision/gcs/view/AlertDialog;)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/powervision/gcs/view/AlertDialog$4;->this$0:Lcom/powervision/gcs/view/AlertDialog;

    invoke-static {v0}, Lcom/powervision/gcs/view/AlertDialog;->access$300(Lcom/powervision/gcs/view/AlertDialog;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/powervision/gcs/R$string;->App_MediaLib_26:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 173
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/powervision/gcs/view/AlertDialog$4$1;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/view/AlertDialog$4$1;-><init>(Lcom/powervision/gcs/view/AlertDialog$4;)V

    const-wide/16 v1, 0xbb8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 183
    :cond_0
    iget-object p1, p0, Lcom/powervision/gcs/view/AlertDialog$4;->this$0:Lcom/powervision/gcs/view/AlertDialog;

    invoke-static {p1}, Lcom/powervision/gcs/view/AlertDialog;->access$400(Lcom/powervision/gcs/view/AlertDialog;)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/powervision/gcs/view/AlertDialog$4;->this$0:Lcom/powervision/gcs/view/AlertDialog;

    invoke-static {v0}, Lcom/powervision/gcs/view/AlertDialog;->access$300(Lcom/powervision/gcs/view/AlertDialog;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/powervision/gcs/R$string;->App_MediaLib_26:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 184
    iget-object p1, p0, Lcom/powervision/gcs/view/AlertDialog$4;->this$0:Lcom/powervision/gcs/view/AlertDialog;

    invoke-static {p1}, Lcom/powervision/gcs/view/AlertDialog;->access$000(Lcom/powervision/gcs/view/AlertDialog;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_1
    return-void
.end method
