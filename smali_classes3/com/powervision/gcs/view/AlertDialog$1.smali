.class Lcom/powervision/gcs/view/AlertDialog$1;
.super Ljava/lang/Object;
.source "AlertDialog.java"

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/view/AlertDialog;->builder(I)Lcom/powervision/gcs/view/AlertDialog;
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

    .line 77
    iput-object p1, p0, Lcom/powervision/gcs/view/AlertDialog$1;->this$0:Lcom/powervision/gcs/view/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSystemUiVisibilityChange(I)V
    .locals 1

    .line 80
    iget-object p1, p0, Lcom/powervision/gcs/view/AlertDialog$1;->this$0:Lcom/powervision/gcs/view/AlertDialog;

    invoke-static {p1}, Lcom/powervision/gcs/view/AlertDialog;->access$000(Lcom/powervision/gcs/view/AlertDialog;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x1707

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 81
    iget-object p1, p0, Lcom/powervision/gcs/view/AlertDialog$1;->this$0:Lcom/powervision/gcs/view/AlertDialog;

    invoke-static {p1}, Lcom/powervision/gcs/view/AlertDialog;->access$000(Lcom/powervision/gcs/view/AlertDialog;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return-void
.end method
