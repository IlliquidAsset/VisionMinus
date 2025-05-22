.class Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity$1;
.super Ljava/lang/Object;
.source "NewIMUCalibrationActivity.java"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/Observer<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;


# direct methods
.method constructor <init>(Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;)V
    .locals 0

    .line 233
    iput-object p1, p0, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity$1;->this$0:Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Ljava/lang/Boolean;)V
    .locals 0

    .line 236
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 237
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity$1;->this$0:Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;

    invoke-virtual {p1}, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->finish()V

    .line 238
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity$1;->this$0:Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->access$100(Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;)Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/natives/PVSDK_AP03_API;->cancelCalibration()I

    :cond_0
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 233
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity$1;->onChanged(Ljava/lang/Boolean;)V

    return-void
.end method
