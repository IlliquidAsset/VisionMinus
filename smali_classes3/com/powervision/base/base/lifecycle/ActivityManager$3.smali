.class Lcom/powervision/base/base/lifecycle/ActivityManager$3;
.super Ljava/lang/Object;
.source "ActivityManager.java"

# interfaces
.implements Lcom/powervision/base/dialog/TempDialog$OnDialogClick;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/base/base/lifecycle/ActivityManager;->showHighTempDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/base/base/lifecycle/ActivityManager;


# direct methods
.method constructor <init>(Lcom/powervision/base/base/lifecycle/ActivityManager;)V
    .locals 0

    .line 254
    iput-object p1, p0, Lcom/powervision/base/base/lifecycle/ActivityManager$3;->this$0:Lcom/powervision/base/base/lifecycle/ActivityManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickOk()V
    .locals 2

    .line 257
    iget-object v0, p0, Lcom/powervision/base/base/lifecycle/ActivityManager$3;->this$0:Lcom/powervision/base/base/lifecycle/ActivityManager;

    invoke-static {v0}, Lcom/powervision/base/base/lifecycle/ActivityManager;->access$400(Lcom/powervision/base/base/lifecycle/ActivityManager;)Lcom/powervision/base/dialog/TempDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/base/dialog/TempDialog;->dismiss()V

    .line 258
    iget-object v0, p0, Lcom/powervision/base/base/lifecycle/ActivityManager$3;->this$0:Lcom/powervision/base/base/lifecycle/ActivityManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/powervision/base/base/lifecycle/ActivityManager;->access$402(Lcom/powervision/base/base/lifecycle/ActivityManager;Lcom/powervision/base/dialog/TempDialog;)Lcom/powervision/base/dialog/TempDialog;

    .line 259
    iget-object v0, p0, Lcom/powervision/base/base/lifecycle/ActivityManager$3;->this$0:Lcom/powervision/base/base/lifecycle/ActivityManager;

    invoke-static {v0}, Lcom/powervision/base/base/lifecycle/ActivityManager;->access$500(Lcom/powervision/base/base/lifecycle/ActivityManager;)V

    .line 260
    iget-object v0, p0, Lcom/powervision/base/base/lifecycle/ActivityManager$3;->this$0:Lcom/powervision/base/base/lifecycle/ActivityManager;

    const/16 v1, 0xb4

    invoke-virtual {v0, v1}, Lcom/powervision/base/base/lifecycle/ActivityManager;->countdown(I)V

    return-void
.end method
