.class Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter$3;
.super Ljava/lang/Object;
.source "ShipMainPresenter.java"

# interfaces
.implements Lorg/xutils/common/Callback$CommonCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter;)V
    .locals 0

    .line 349
    iput-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter$3;->this$0:Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelled(Lorg/xutils/common/Callback$CancelledException;)V
    .locals 1

    const-string p1, "ShipMainPresenter"

    const-string v0, "onCancelled: "

    .line 374
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onError(Ljava/lang/Throwable;Z)V
    .locals 1

    .line 369
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onError: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ShipMainPresenter"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onFinished()V
    .locals 2

    const-string v0, "ShipMainPresenter"

    const-string v1, "onFinished: "

    .line 379
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 2

    .line 352
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSuccess: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ShipMainPresenter"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    check-cast p1, Ljava/lang/String;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "event"

    .line 355
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 357
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 359
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter$3;->this$0:Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter;

    invoke-static {v0, p1}, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter;->access$100(Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
