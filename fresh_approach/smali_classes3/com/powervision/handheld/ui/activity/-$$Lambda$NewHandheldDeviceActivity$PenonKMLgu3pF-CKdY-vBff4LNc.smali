.class public final synthetic Lcom/powervision/handheld/ui/activity/-$$Lambda$NewHandheldDeviceActivity$PenonKMLgu3pF-CKdY-vBff4LNc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

.field public final synthetic f$1:[I


# direct methods
.method public synthetic constructor <init>(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;[I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/powervision/handheld/ui/activity/-$$Lambda$NewHandheldDeviceActivity$PenonKMLgu3pF-CKdY-vBff4LNc;->f$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    iput-object p2, p0, Lcom/powervision/handheld/ui/activity/-$$Lambda$NewHandheldDeviceActivity$PenonKMLgu3pF-CKdY-vBff4LNc;->f$1:[I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/-$$Lambda$NewHandheldDeviceActivity$PenonKMLgu3pF-CKdY-vBff4LNc;->f$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    iget-object v1, p0, Lcom/powervision/handheld/ui/activity/-$$Lambda$NewHandheldDeviceActivity$PenonKMLgu3pF-CKdY-vBff4LNc;->f$1:[I

    invoke-virtual {v0, v1}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->lambda$showHistogramData$13$NewHandheldDeviceActivity([I)V

    return-void
.end method
