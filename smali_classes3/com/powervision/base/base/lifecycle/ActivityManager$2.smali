.class Lcom/powervision/base/base/lifecycle/ActivityManager$2;
.super Ljava/lang/Object;
.source "ActivityManager.java"

# interfaces
.implements Lcom/powervision/base/dialog/BatteryErrorDialog$OnDialogClick;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/base/base/lifecycle/ActivityManager;->showBatteryErrorDialog(I)V
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

    .line 217
    iput-object p1, p0, Lcom/powervision/base/base/lifecycle/ActivityManager$2;->this$0:Lcom/powervision/base/base/lifecycle/ActivityManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickOk()V
    .locals 2

    .line 220
    iget-object v0, p0, Lcom/powervision/base/base/lifecycle/ActivityManager$2;->this$0:Lcom/powervision/base/base/lifecycle/ActivityManager;

    invoke-static {v0}, Lcom/powervision/base/base/lifecycle/ActivityManager;->access$300(Lcom/powervision/base/base/lifecycle/ActivityManager;)Lcom/powervision/base/dialog/BatteryErrorDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/base/dialog/BatteryErrorDialog;->dismiss()V

    .line 221
    iget-object v0, p0, Lcom/powervision/base/base/lifecycle/ActivityManager$2;->this$0:Lcom/powervision/base/base/lifecycle/ActivityManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/powervision/base/base/lifecycle/ActivityManager;->access$302(Lcom/powervision/base/base/lifecycle/ActivityManager;Lcom/powervision/base/dialog/BatteryErrorDialog;)Lcom/powervision/base/dialog/BatteryErrorDialog;

    return-void
.end method

.method public onClickService()V
    .locals 2

    .line 226
    invoke-static {}, Lcom/powervision/base/router/RouterUtil$Home;->toServiceFragment()V

    .line 227
    iget-object v0, p0, Lcom/powervision/base/base/lifecycle/ActivityManager$2;->this$0:Lcom/powervision/base/base/lifecycle/ActivityManager;

    invoke-static {v0}, Lcom/powervision/base/base/lifecycle/ActivityManager;->access$300(Lcom/powervision/base/base/lifecycle/ActivityManager;)Lcom/powervision/base/dialog/BatteryErrorDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/base/dialog/BatteryErrorDialog;->dismiss()V

    .line 228
    iget-object v0, p0, Lcom/powervision/base/base/lifecycle/ActivityManager$2;->this$0:Lcom/powervision/base/base/lifecycle/ActivityManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/powervision/base/base/lifecycle/ActivityManager;->access$302(Lcom/powervision/base/base/lifecycle/ActivityManager;Lcom/powervision/base/dialog/BatteryErrorDialog;)Lcom/powervision/base/dialog/BatteryErrorDialog;

    return-void
.end method
