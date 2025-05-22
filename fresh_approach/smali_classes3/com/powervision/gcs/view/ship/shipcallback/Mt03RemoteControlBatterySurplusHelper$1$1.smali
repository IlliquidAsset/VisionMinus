.class Lcom/powervision/gcs/view/ship/shipcallback/Mt03RemoteControlBatterySurplusHelper$1$1;
.super Ljava/lang/Object;
.source "Mt03RemoteControlBatterySurplusHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/view/ship/shipcallback/Mt03RemoteControlBatterySurplusHelper$1;->mt03RemoteControlBatterySurplus(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/powervision/gcs/view/ship/shipcallback/Mt03RemoteControlBatterySurplusHelper$1;

.field final synthetic val$surplus:I


# direct methods
.method constructor <init>(Lcom/powervision/gcs/view/ship/shipcallback/Mt03RemoteControlBatterySurplusHelper$1;I)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/powervision/gcs/view/ship/shipcallback/Mt03RemoteControlBatterySurplusHelper$1$1;->this$1:Lcom/powervision/gcs/view/ship/shipcallback/Mt03RemoteControlBatterySurplusHelper$1;

    iput p2, p0, Lcom/powervision/gcs/view/ship/shipcallback/Mt03RemoteControlBatterySurplusHelper$1$1;->val$surplus:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 109
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/shipcallback/Mt03RemoteControlBatterySurplusHelper$1$1;->this$1:Lcom/powervision/gcs/view/ship/shipcallback/Mt03RemoteControlBatterySurplusHelper$1;

    iget-object v0, v0, Lcom/powervision/gcs/view/ship/shipcallback/Mt03RemoteControlBatterySurplusHelper$1;->this$0:Lcom/powervision/gcs/view/ship/shipcallback/Mt03RemoteControlBatterySurplusHelper;

    iget v1, p0, Lcom/powervision/gcs/view/ship/shipcallback/Mt03RemoteControlBatterySurplusHelper$1$1;->val$surplus:I

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/view/ship/shipcallback/Mt03RemoteControlBatterySurplusHelper;->notifyListeners(I)V

    return-void
.end method
