.class public final synthetic Lcom/powervision/handheld/ui/activity/-$$Lambda$NewHandheldDeviceActivity$pRqwjVz6OLu2_z4J5AVDa7wCB90;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/powervision/handheld/ui/activity/-$$Lambda$NewHandheldDeviceActivity$pRqwjVz6OLu2_z4J5AVDa7wCB90;->f$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/-$$Lambda$NewHandheldDeviceActivity$pRqwjVz6OLu2_z4J5AVDa7wCB90;->f$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    invoke-virtual {v0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->lambda$onInternalStorageFull$7$NewHandheldDeviceActivity()V

    return-void
.end method
