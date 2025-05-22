.class Lcom/powervision/gcs/view/AlertDialog$6;
.super Ljava/lang/Object;
.source "AlertDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/view/AlertDialog;->setLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/view/AlertDialog;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/view/AlertDialog;)V
    .locals 0

    .line 227
    iput-object p1, p0, Lcom/powervision/gcs/view/AlertDialog$6;->this$0:Lcom/powervision/gcs/view/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 230
    iget-object p1, p0, Lcom/powervision/gcs/view/AlertDialog$6;->this$0:Lcom/powervision/gcs/view/AlertDialog;

    invoke-static {p1}, Lcom/powervision/gcs/view/AlertDialog;->access$000(Lcom/powervision/gcs/view/AlertDialog;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
