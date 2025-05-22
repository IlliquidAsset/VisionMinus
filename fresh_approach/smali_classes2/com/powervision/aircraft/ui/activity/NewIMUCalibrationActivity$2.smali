.class Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity$2;
.super Landroid/os/CountDownTimer;
.source "NewIMUCalibrationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->mCountDownProgress()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;


# direct methods
.method constructor <init>(Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;JJ)V
    .locals 0

    .line 328
    iput-object p1, p0, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity$2;->this$0:Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 0

    return-void
.end method

.method public onTick(J)V
    .locals 3

    .line 331
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity$2;->this$0:Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;->access$200(Lcom/powervision/aircraft/ui/activity/NewIMUCalibrationActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    div-long/2addr p1, v1

    long-to-int p2, p1

    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void
.end method
