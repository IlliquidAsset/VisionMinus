.class Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter$HeartbeatTimeoutRunnable;
.super Ljava/lang/Object;
.source "ShipCameraMenuPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HeartbeatTimeoutRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter;


# direct methods
.method private constructor <init>(Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter;)V
    .locals 0

    .line 334
    iput-object p1, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter$HeartbeatTimeoutRunnable;->this$0:Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter;Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter$1;)V
    .locals 0

    .line 334
    invoke-direct {p0, p1}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter$HeartbeatTimeoutRunnable;-><init>(Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 337
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter$HeartbeatTimeoutRunnable;->this$0:Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter;

    invoke-static {v0}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter;->access$200(Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter;)Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuTask$View;

    move-result-object v0

    invoke-interface {v0}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuTask$View;->onCameraConnectTimeout()V

    return-void
.end method
