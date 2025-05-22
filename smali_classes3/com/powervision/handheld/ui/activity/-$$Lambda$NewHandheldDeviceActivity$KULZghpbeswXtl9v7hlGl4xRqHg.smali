.class public final synthetic Lcom/powervision/handheld/ui/activity/-$$Lambda$NewHandheldDeviceActivity$KULZghpbeswXtl9v7hlGl4xRqHg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/powervision/handheld/ui/activity/-$$Lambda$NewHandheldDeviceActivity$KULZghpbeswXtl9v7hlGl4xRqHg;->f$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    iput-boolean p2, p0, Lcom/powervision/handheld/ui/activity/-$$Lambda$NewHandheldDeviceActivity$KULZghpbeswXtl9v7hlGl4xRqHg;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/-$$Lambda$NewHandheldDeviceActivity$KULZghpbeswXtl9v7hlGl4xRqHg;->f$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    iget-boolean v1, p0, Lcom/powervision/handheld/ui/activity/-$$Lambda$NewHandheldDeviceActivity$KULZghpbeswXtl9v7hlGl4xRqHg;->f$1:Z

    invoke-virtual {v0, v1}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->lambda$onDeviceConnectionChange$19$NewHandheldDeviceActivity(Z)V

    return-void
.end method
