.class Lcom/powervision/base/dialog/TempDialog$1;
.super Ljava/lang/Object;
.source "TempDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/base/dialog/TempDialog;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/base/dialog/TempDialog;


# direct methods
.method constructor <init>(Lcom/powervision/base/dialog/TempDialog;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/powervision/base/dialog/TempDialog$1;->this$0:Lcom/powervision/base/dialog/TempDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 31
    iget-object p1, p0, Lcom/powervision/base/dialog/TempDialog$1;->this$0:Lcom/powervision/base/dialog/TempDialog;

    invoke-static {p1}, Lcom/powervision/base/dialog/TempDialog;->access$000(Lcom/powervision/base/dialog/TempDialog;)Lcom/powervision/base/dialog/TempDialog$OnDialogClick;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 32
    iget-object p1, p0, Lcom/powervision/base/dialog/TempDialog$1;->this$0:Lcom/powervision/base/dialog/TempDialog;

    invoke-static {p1}, Lcom/powervision/base/dialog/TempDialog;->access$000(Lcom/powervision/base/dialog/TempDialog;)Lcom/powervision/base/dialog/TempDialog$OnDialogClick;

    move-result-object p1

    invoke-interface {p1}, Lcom/powervision/base/dialog/TempDialog$OnDialogClick;->onClickOk()V

    :cond_0
    return-void
.end method
