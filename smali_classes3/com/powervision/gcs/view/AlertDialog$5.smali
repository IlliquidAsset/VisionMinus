.class Lcom/powervision/gcs/view/AlertDialog$5;
.super Ljava/lang/Object;
.source "AlertDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/view/AlertDialog;->setNegativeButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/powervision/gcs/view/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/view/AlertDialog;

.field final synthetic val$listener:Landroid/view/View$OnClickListener;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/view/AlertDialog;Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 198
    iput-object p1, p0, Lcom/powervision/gcs/view/AlertDialog$5;->this$0:Lcom/powervision/gcs/view/AlertDialog;

    iput-object p2, p0, Lcom/powervision/gcs/view/AlertDialog$5;->val$listener:Landroid/view/View$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/powervision/gcs/view/AlertDialog$5;->val$listener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 202
    iget-object p1, p0, Lcom/powervision/gcs/view/AlertDialog$5;->this$0:Lcom/powervision/gcs/view/AlertDialog;

    invoke-static {p1}, Lcom/powervision/gcs/view/AlertDialog;->access$000(Lcom/powervision/gcs/view/AlertDialog;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
