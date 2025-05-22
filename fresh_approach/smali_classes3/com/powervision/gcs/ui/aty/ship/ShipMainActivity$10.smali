.class Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$10;
.super Ljava/lang/Object;
.source "ShipMainActivity.java"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->missionUploadSuccess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Consumer<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)V
    .locals 0

    .line 2649
    iput-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$10;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Long;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 2652
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "accept: gone"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lzqmission"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 2653
    invoke-static {v0}, Lcom/powervision/natives/PVSDK_W4_API;->setSailMode(I)I

    move-result v0

    if-nez v0, :cond_0

    .line 2655
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$10;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-static {p1}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$4100(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$ShipMainHandler;

    move-result-object p1

    sget-object v0, Lcom/powervision/gcs/ui/aty/ship/-$$Lambda$fYGFvnYbWjvErmzOfcw1NxaayMs;->INSTANCE:Lcom/powervision/gcs/ui/aty/ship/-$$Lambda$fYGFvnYbWjvErmzOfcw1NxaayMs;

    invoke-virtual {p1, v0}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$ShipMainHandler;->post(Ljava/lang/Runnable;)Z

    .line 2656
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$10;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-static {p1}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$4200(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p1

    invoke-interface {p1}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    return-void

    .line 2659
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x2

    cmp-long p1, v0, v2

    if-nez p1, :cond_1

    const-string p1, "lzqMission"

    const-string v0, " \u8fd4\u56de-1  "

    .line 2660
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2661
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$10;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-static {p1}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$4100(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$ShipMainHandler;

    move-result-object p1

    sget-object v0, Lcom/powervision/gcs/ui/aty/ship/-$$Lambda$fYGFvnYbWjvErmzOfcw1NxaayMs;->INSTANCE:Lcom/powervision/gcs/ui/aty/ship/-$$Lambda$fYGFvnYbWjvErmzOfcw1NxaayMs;

    invoke-virtual {p1, v0}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$ShipMainHandler;->post(Ljava/lang/Runnable;)Z

    .line 2662
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$10;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-static {p1}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$3700(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 2649
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$10;->accept(Ljava/lang/Long;)V

    return-void
.end method
