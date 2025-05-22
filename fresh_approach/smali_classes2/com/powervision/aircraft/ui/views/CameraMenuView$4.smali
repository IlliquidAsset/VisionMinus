.class Lcom/powervision/aircraft/ui/views/CameraMenuView$4;
.super Ljava/lang/Object;
.source "CameraMenuView.java"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/aircraft/ui/views/CameraMenuView;->initLiveData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/Observer<",
        "Lcom/powervision/aircraft/lapse/data/LapseTrailData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/aircraft/ui/views/CameraMenuView;


# direct methods
.method constructor <init>(Lcom/powervision/aircraft/ui/views/CameraMenuView;)V
    .locals 0

    .line 331
    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView$4;->this$0:Lcom/powervision/aircraft/ui/views/CameraMenuView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Lcom/powervision/aircraft/lapse/data/LapseTrailData;)V
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 336
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView$4;->this$0:Lcom/powervision/aircraft/ui/views/CameraMenuView;

    invoke-static {p1, v0}, Lcom/powervision/aircraft/ui/views/CameraMenuView;->access$502(Lcom/powervision/aircraft/ui/views/CameraMenuView;I)I

    goto/16 :goto_1

    .line 338
    :cond_0
    iget-object v1, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView$4;->this$0:Lcom/powervision/aircraft/ui/views/CameraMenuView;

    invoke-static {v1, p1}, Lcom/powervision/aircraft/ui/views/CameraMenuView;->access$602(Lcom/powervision/aircraft/ui/views/CameraMenuView;Lcom/powervision/aircraft/lapse/data/LapseTrailData;)Lcom/powervision/aircraft/lapse/data/LapseTrailData;

    .line 339
    iget-object v1, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView$4;->this$0:Lcom/powervision/aircraft/ui/views/CameraMenuView;

    iget-object p1, p1, Lcom/powervision/aircraft/lapse/data/LapseTrailData;->data:Ljava/util/List;

    iput-object p1, v1, Lcom/powervision/aircraft/ui/views/CameraMenuView;->dataList:Ljava/util/List;

    .line 340
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "run: dataList = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView$4;->this$0:Lcom/powervision/aircraft/ui/views/CameraMenuView;

    iget-object v1, v1, Lcom/powervision/aircraft/ui/views/CameraMenuView;->dataList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView$4;->this$0:Lcom/powervision/aircraft/ui/views/CameraMenuView;

    iget-object v1, v1, Lcom/powervision/aircraft/ui/views/CameraMenuView;->dataList:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "CameraMenuView"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView$4;->this$0:Lcom/powervision/aircraft/ui/views/CameraMenuView;

    iget-object p1, p1, Lcom/powervision/aircraft/ui/views/CameraMenuView;->dataList:Ljava/util/List;

    invoke-static {p1}, Lcom/powervision/base/utils/StringUtils;->isListValid(Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 342
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView$4;->this$0:Lcom/powervision/aircraft/ui/views/CameraMenuView;

    iget-object p1, p1, Lcom/powervision/aircraft/ui/views/CameraMenuView;->dataList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    :goto_0
    if-ge v0, p1, :cond_1

    .line 344
    iget-object v1, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView$4;->this$0:Lcom/powervision/aircraft/ui/views/CameraMenuView;

    invoke-static {v1}, Lcom/powervision/aircraft/ui/views/CameraMenuView;->access$700(Lcom/powervision/aircraft/ui/views/CameraMenuView;)[F

    move-result-object v1

    iget-object v2, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView$4;->this$0:Lcom/powervision/aircraft/ui/views/CameraMenuView;

    iget-object v2, v2, Lcom/powervision/aircraft/ui/views/CameraMenuView;->dataList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/powervision/aircraft/lapse/data/LapseTrailData$Trail;

    iget v2, v2, Lcom/powervision/aircraft/lapse/data/LapseTrailData$Trail;->x:F

    aput v2, v1, v0

    .line 345
    iget-object v1, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView$4;->this$0:Lcom/powervision/aircraft/ui/views/CameraMenuView;

    invoke-static {v1}, Lcom/powervision/aircraft/ui/views/CameraMenuView;->access$800(Lcom/powervision/aircraft/ui/views/CameraMenuView;)[F

    move-result-object v1

    iget-object v2, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView$4;->this$0:Lcom/powervision/aircraft/ui/views/CameraMenuView;

    iget-object v2, v2, Lcom/powervision/aircraft/ui/views/CameraMenuView;->dataList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/powervision/aircraft/lapse/data/LapseTrailData$Trail;

    iget v2, v2, Lcom/powervision/aircraft/lapse/data/LapseTrailData$Trail;->y:F

    aput v2, v1, v0

    .line 346
    iget-object v1, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView$4;->this$0:Lcom/powervision/aircraft/ui/views/CameraMenuView;

    invoke-static {v1}, Lcom/powervision/aircraft/ui/views/CameraMenuView;->access$900(Lcom/powervision/aircraft/ui/views/CameraMenuView;)[F

    move-result-object v1

    iget-object v2, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView$4;->this$0:Lcom/powervision/aircraft/ui/views/CameraMenuView;

    iget-object v2, v2, Lcom/powervision/aircraft/ui/views/CameraMenuView;->dataList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/powervision/aircraft/lapse/data/LapseTrailData$Trail;

    iget v2, v2, Lcom/powervision/aircraft/lapse/data/LapseTrailData$Trail;->z:F

    aput v2, v1, v0

    .line 347
    iget-object v1, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView$4;->this$0:Lcom/powervision/aircraft/ui/views/CameraMenuView;

    invoke-static {v1}, Lcom/powervision/aircraft/ui/views/CameraMenuView;->access$1000(Lcom/powervision/aircraft/ui/views/CameraMenuView;)[F

    move-result-object v1

    iget-object v2, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView$4;->this$0:Lcom/powervision/aircraft/ui/views/CameraMenuView;

    iget-object v2, v2, Lcom/powervision/aircraft/ui/views/CameraMenuView;->dataList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/powervision/aircraft/lapse/data/LapseTrailData$Trail;

    iget v2, v2, Lcom/powervision/aircraft/lapse/data/LapseTrailData$Trail;->yaw:F

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 349
    :cond_1
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView$4;->this$0:Lcom/powervision/aircraft/ui/views/CameraMenuView;

    iget-object v0, p1, Lcom/powervision/aircraft/ui/views/CameraMenuView;->dataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/powervision/aircraft/ui/views/CameraMenuView;->access$502(Lcom/powervision/aircraft/ui/views/CameraMenuView;I)I

    .line 350
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView$4;->this$0:Lcom/powervision/aircraft/ui/views/CameraMenuView;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/views/CameraMenuView;->access$600(Lcom/powervision/aircraft/ui/views/CameraMenuView;)Lcom/powervision/aircraft/lapse/data/LapseTrailData;

    move-result-object v0

    iget-boolean v0, v0, Lcom/powervision/aircraft/lapse/data/LapseTrailData;->order:Z

    invoke-static {p1, v0}, Lcom/powervision/aircraft/ui/views/CameraMenuView;->access$1102(Lcom/powervision/aircraft/ui/views/CameraMenuView;Z)Z

    :cond_2
    :goto_1
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 331
    check-cast p1, Lcom/powervision/aircraft/lapse/data/LapseTrailData;

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/views/CameraMenuView$4;->onChanged(Lcom/powervision/aircraft/lapse/data/LapseTrailData;)V

    return-void
.end method
