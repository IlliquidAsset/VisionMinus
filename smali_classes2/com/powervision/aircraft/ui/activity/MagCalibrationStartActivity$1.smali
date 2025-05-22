.class Lcom/powervision/aircraft/ui/activity/MagCalibrationStartActivity$1;
.super Ljava/lang/Object;
.source "MagCalibrationStartActivity.java"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/aircraft/ui/activity/MagCalibrationStartActivity;->setListener()V
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
.field final synthetic this$0:Lcom/powervision/aircraft/ui/activity/MagCalibrationStartActivity;


# direct methods
.method constructor <init>(Lcom/powervision/aircraft/ui/activity/MagCalibrationStartActivity;)V
    .locals 0

    .line 274
    iput-object p1, p0, Lcom/powervision/aircraft/ui/activity/MagCalibrationStartActivity$1;->this$0:Lcom/powervision/aircraft/ui/activity/MagCalibrationStartActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Ljava/lang/Boolean;)V
    .locals 0

    .line 277
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 278
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/MagCalibrationStartActivity$1;->this$0:Lcom/powervision/aircraft/ui/activity/MagCalibrationStartActivity;

    invoke-virtual {p1}, Lcom/powervision/aircraft/ui/activity/MagCalibrationStartActivity;->finish()V

    .line 279
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/MagCalibrationStartActivity$1;->this$0:Lcom/powervision/aircraft/ui/activity/MagCalibrationStartActivity;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/activity/MagCalibrationStartActivity;->access$100(Lcom/powervision/aircraft/ui/activity/MagCalibrationStartActivity;)Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/natives/PVSDK_AP03_API;->cancelCalibration()I

    :cond_0
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 274
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/activity/MagCalibrationStartActivity$1;->onChanged(Ljava/lang/Boolean;)V

    return-void
.end method
