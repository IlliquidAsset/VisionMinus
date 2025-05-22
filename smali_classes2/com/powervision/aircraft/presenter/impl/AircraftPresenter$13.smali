.class Lcom/powervision/aircraft/presenter/impl/AircraftPresenter$13;
.super Ljava/lang/Object;
.source "AircraftPresenter.java"

# interfaces
.implements Lcom/powervision/aircraft/smart/SmartFollowManager$OnSetFollowParmasListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;


# direct methods
.method constructor <init>(Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;)V
    .locals 0

    .line 1577
    iput-object p1, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter$13;->this$0:Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSetParmasResultFailed(II)V
    .locals 2

    .line 1594
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSetParmasResultFailed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",status = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "helin"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSetParmasResultSuccess(II)V
    .locals 2

    .line 1580
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onSetParmasResultSuccess: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",water = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter$13;->this$0:Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;

    invoke-static {v0}, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->access$2100(Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;)Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "helin"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1581
    iget-object p2, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter$13;->this$0:Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;

    invoke-static {p2}, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->access$2100(Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x4

    const/4 v0, 0x0

    if-ne p1, p2, :cond_0

    .line 1584
    new-instance p1, Landroid/util/SparseArray;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/util/SparseArray;-><init>(I)V

    .line 1585
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1586
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object p2

    const/16 v1, 0x15

    invoke-virtual {p2, v1, p1}, Lcom/powervision/base/rxbus/RxBus;->post(ILjava/lang/Object;)V

    .line 1588
    :cond_0
    iget-object p1, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter$13;->this$0:Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;

    invoke-static {p1, v0}, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->access$2102(Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;Z)Z

    :cond_1
    return-void
.end method

.method public onSmartFunctionActuaHight(F)V
    .locals 0

    return-void
.end method

.method public onSmartFunctionActuaSpeed(F)V
    .locals 0

    return-void
.end method

.method public onSmartFunctionData(FFFFI)V
    .locals 0

    return-void
.end method
