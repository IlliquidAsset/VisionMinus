.class Lcom/powervision/gcs/view/ship/shiptopview/ShipTopPresenter$6;
.super Ljava/lang/Object;
.source "ShipTopPresenter.java"

# interfaces
.implements Lcom/powervision/natives/callback/RemoteControlCallback$Mt03RemoteControlBatterySurplusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/view/ship/shiptopview/ShipTopPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/view/ship/shiptopview/ShipTopPresenter;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/view/ship/shiptopview/ShipTopPresenter;)V
    .locals 0

    .line 448
    iput-object p1, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopPresenter$6;->this$0:Lcom/powervision/gcs/view/ship/shiptopview/ShipTopPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public mt03RemoteControlBatterySurplus(I)V
    .locals 2

    .line 451
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mt03RemoteControlBatterySurplus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lzqTop"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopPresenter$6;->this$0:Lcom/powervision/gcs/view/ship/shiptopview/ShipTopPresenter;

    iget v0, v0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopPresenter;->mOldRemoteSurplus:I

    if-eq p1, v0, :cond_0

    .line 453
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopPresenter$6;->this$0:Lcom/powervision/gcs/view/ship/shiptopview/ShipTopPresenter;

    iput p1, v0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopPresenter;->mOldRemoteSurplus:I

    .line 454
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopPresenter$6;->this$0:Lcom/powervision/gcs/view/ship/shiptopview/ShipTopPresenter;

    invoke-static {v0}, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopPresenter;->access$000(Lcom/powervision/gcs/view/ship/shiptopview/ShipTopPresenter;)Lcom/powervision/gcs/view/ship/shiptopview/ShipTopTask$View;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopTask$View;->updateMt03RemoteControlBatterySurplus(I)V

    :cond_0
    return-void
.end method
