.class public Lcom/powervision/camera/ui/adapter/CameraBasicAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "CameraBasicAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/camera/ui/adapter/CameraBasicAdapter$BasicViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/powervision/camera/ui/adapter/CameraBasicAdapter$BasicViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private cameraManager:Lcom/powervision/camera/camera/CameraManager;

.field private context:Landroid/content/Context;

.field private evMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private evOnly:Z

.field private evPickerView:Lcom/powervision/base/views/HPickerView;

.field private isAuto:Z

.field private isoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private isodPickerView:Lcom/powervision/base/views/HPickerView;

.field private mList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private meteringModePickerView:Lcom/powervision/base/views/HPickerView;

.field private shutterMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private shutterPickerView:Lcom/powervision/base/views/HPickerView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 45
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 33
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/powervision/camera/ui/adapter/CameraBasicAdapter;->mList:Landroid/util/SparseArray;

    const/4 v0, 0x0

    .line 206
    iput-boolean v0, p0, Lcom/powervision/camera/ui/adapter/CameraBasicAdapter;->evOnly:Z

    .line 46
    iput-object p1, p0, Lcom/powervision/camera/ui/adapter/CameraBasicAdapter;->context:Landroid/content/Context;

    .line 47
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/camera/ui/adapter/CameraBasicAdapter;->cameraManager:Lcom/powervision/camera/camera/CameraManager;

    .line 48
    invoke-direct {p0}, Lcom/powervision/camera/ui/adapter/CameraBasicAdapter;->addISOData()V

    .line 49
    invoke-direct {p0}, Lcom/powervision/camera/ui/adapter/CameraBasicAdapter;->addEVData()V

    return-void
.end method

.method private addEVData()V
    .locals 3

    .line 259
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/powervision/camera/ui/adapter/CameraBasicAdapter;->evMap:Ljava/util/Map;

    const/4 v1, 0x0

    .line 260
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "-2.0"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    iget-object v0, p0, Lcom/powervision/camera/ui/adapter/CameraBasicAdapter;->evMap:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "-1.7"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    iget-object v0, p0, Lcom/powervision/camera/ui/adapter/CameraBasicAdapter;->evMap:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "-1.3"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    iget-object v0, p0, Lcom/powervision/camera/ui/adapter/CameraBasicAdapter;->evMap:Ljava/util/Map;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "-1.0"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    iget-object v0, p0, Lcom/powervision/camera/ui/adapter/CameraBasicAdapter;->evMap:Ljava/util/Map;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "-0.7"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    iget-object v0, p0, Lcom/powervision/camera/ui/adapter/CameraBasicAdapter;->evMap:Ljava/util/Map;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "-0.3"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    iget-object v0, p0, Lcom/powervision/camera/ui/adapter/CameraBasicAdapter;->evMap:Ljava/util/Map;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "0 "

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    iget-object v0, p0, Lcom/powervision/camera/ui/adapter/CameraBasicAdapter;->evMap:Ljava/util/Map;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "+0.3"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    iget-object v0, p0, Lcom/powervision/camera/ui/adapter/CameraBasicAdapter;->evMap:Ljava/util/Map;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "+0.7"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    iget-object v0, p0, Lcom/powervision/camera/ui/adapter/CameraBasicAdapter;->evMap:Ljava/util/Map;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "+1.0"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    iget-object v0, p0, Lcom/powervision/camera/ui/adapter/CameraBasicAdapter;->evMap:Ljava/util/Map;

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "+1.3"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    iget-object v0, p0, Lcom/powervision/camera/ui/adapter/CameraBasicAdapter;->evMap:Ljava/util/Map;

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "+1.7"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    iget-object v0, p0, Lcom/powervision/camera/ui/adapter/CameraBasicAdapter;->evMap:Ljava/util/Map;

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "+2.0"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private addISOData()V
    .locals 3

    .line 248
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/powervision/camera/ui/adapter/CameraBasicAdapter;->isoMap:Ljava/util/Map;

    const/4 v1, 0x2

    .line 249
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "100"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    iget-object v0, p0, Lcom/powervision/camera/ui/adapter/CameraBasicAdapter;->isoMap:Ljava/util/Map;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "200"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    iget-object v0, p0, Lcom/powervision/camera/ui/adapter/CameraBasicAdapter;->isoMap:Ljava/util/Map;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "400"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    iget-object v0, p0, Lcom/powervision/camera/ui/adapter/CameraBasicAdapter;->isoMap:Ljava/util/Map;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "800"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    iget-object v0, p0, Lcom/powervision/camera/ui/adapter/CameraBasicAdapter;->isoMap:Ljava/util/Map;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "1600"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    iget-object v0, p0, Lcom/powervision/camera/ui/adapter/CameraBasicAdapter;->isoMap:Ljava/util/Map;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "3200"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    iget-object v0, p0, Lcom/powervision/camera/ui/adapter/CameraBasicAdapter;->isoMap:Ljava/util/Map;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "6400"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private getTitle(I)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    const-string p1, "ISO"

    return-object p1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const-string p1, "Shutter"

    return-object p1

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 241
    iget-object p1, p0, Lcom/powervision/camera/ui/adapter/CameraBasicAdapter;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/lewis/camera/R$string;->AP03_CameraSetting_1:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 243
    :cond_2
    iget-object p1, p0, Lcom/powervision/camera/ui/adapter/CameraBasicAdapter;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/lewis/camera/R$string;->AP03_CameraSetting_2:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public getEvPickerView()Lcom/powervision/base/views/HPickerView;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/powervision/camera/ui/adapter/CameraBasicAdapter;->evPickerView:Lcom/powervision/base/views/HPickerView;

    return-object v0
.end method

.method public getIsodPickerView()Lcom/powervision/base/views/HPickerView;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/powervision/camera/ui/adapter/CameraBasicAdapter;->isodPickerView:Lcom/powervision/base/views/HPickerView;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/powervision/camera/ui/adapter/CameraBasicAdapter;->mList:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    return v0
.end method

.method public getMeteringModePickerView()Lcom/powervision/base/views/HPickerView;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/powervision/camera/ui/adapter/CameraBasicAdapter;->meteringModePickerView:Lcom/powervision/base/views/HPickerView;

    return-object v0
.end method

.method public getShutterPickerView()Lcom/powervision/base/views/HPickerView;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/powervision/camera/ui/adapter/CameraBasicAdapter;->shutterPickerView:Lcom/powervision/base/views/HPickerView;

    return-object v0
.end method

.method public synthetic lambda$onBindViewHolder$0$CameraBasicAdapter(Ljava/lang/String;I)V
    .locals 2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 97
    iget-object p2, p0, Lcom/powervision/camera/ui/adapter/CameraBasicAdapter;->evMap:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 98
    iget-object p2, p0, Lcom/powervision/camera/ui/adapter/CameraBasicAdapter;->evMap:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    .line 99
    iget-object v0, p0, Lcom/powervision/camera/ui/adapter/CameraBasicAdapter;->cameraManager:Lcom/powervision/camera/camera/CameraManager;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/powervision/camera/camera/CameraManager;->setEV(I)V

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  setEV()   \u89d2\u6807 item="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "   index="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " evCmdByIndex="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "p_camera"

    invoke-static {p2, p1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$onBindViewHolder$1$CameraBasicAdapter(Lcom/powervision/camera/ui/adapter/CameraBasicAdapter$BasicViewHolder;Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    .line 112
    invoke-static {p1}, Lcom/powervision/camera/ui/adapter/CameraBasicAdapter$BasicViewHolder;->access$100(Lcom/powervision/camera/ui/adapter/CameraBasicAdapter$BasicViewHolder;)Lcom/powervision/base/views/HPickerView;

    move-result-object p3

    invoke-virtual {p3}, Lcom/powervision/base/views/HPickerView;->getData()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p2

    .line 113
    iget-object p3, p0, Lcom/powervision/camera/ui/adapter/CameraBasicAdapter;->cameraManager:Lcom/powervision/camera/camera/CameraManager;

    invoke-virtual {p3, p2}, Lcom/powervision/camera/camera/CameraManager;->setMeteringMode(I)V

    .line 114
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  \u6d4b\u5149\u6a21\u5f0f   setMeteringMode()   index="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "p_camera"

    invoke-static {p3, p2}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-static {p1}, Lcom/powervision/camera/ui/adapter/CameraBasicAdapter$BasicViewHolder;->access$100(Lcom/powervision/camera/ui/adapter/CameraBasicAdapter$BasicViewHolder;)Lcom/powervision/base/views/HPickerView;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/camera/ui/adapter/CameraBasicAdapter;->meteringModePickerView:Lcom/powervision/base/views/HPickerView;

    :cond_0
    return-void
.end method

.method public synthetic lambda$onBindViewHolder$2$CameraBasicAdapter(Lcom/powervision/camera/ui/adapter/CameraBasicAdapter$BasicViewHolder;Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    .line 141
    invoke-static {p1}, Lcom/powervision/camera/ui/adapter/CameraBasicAdapter$BasicViewHolder;->access$100(Lcom/powervision/camera/ui/adapter/CameraBasicAdapter$BasicViewHolder;)Lcom/powervision/base/views/HPickerView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/base/views/HPickerView;->getData()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 142
    iget-object p2, p0, Lcom/powervision/camera/ui/adapter/CameraBasicAdapter;->cameraManager:Lcom/powervision/camera/camera/CameraManager;

    invoke-virtual {p2, p1}, Lcom/powervision/camera/camera/CameraManager;->setIso(I)V

    .line 143
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  setIso()   isoIndex="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "p_camera"

    invoke-static {p2, p1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$onBindViewHolder$3$CameraBasicAdapter(Lcom/powervision/camera/ui/adapter/CameraBasicAdapter$BasicViewHolder;ILjava/lang/String;I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p4, v0, :cond_0

    .line 161
    invoke-static {p1}, Lcom/powervision/camera/ui/adapter/CameraBasicAdapter$BasicViewHolder;->access$100(Lcom/powervision/camera/ui/adapter/CameraBasicAdapter$BasicViewHolder;)Lcom/powervision/base/views/HPickerView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/base/views/HPickerView;->getData()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 162
    iget-object p3, p0, Lcom/powervision/camera/ui/adapter/CameraBasicAdapter;->cameraManager:Lcom/powervision/camera/camera/CameraManager;

    invoke-virtual {p3, p1}, Lcom/powervision/camera/camera/CameraManager;->setExposureTime(I)V

    .line 163
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "   \u5feb\u95e8\u901f\u5ea6 \u3002\u3002setExposureTime()   timeIndex="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "  exptimeValue="

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "p_camera"

    invoke-static {p2, p1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 31
    check-cast p1, Lcom/powervision/camera/ui/adapter/CameraBasicAdapter$BasicViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/powervision/camera/ui/adapter/CameraBasicAdapter;->onBindViewHolder(Lcom/powervision/camera/ui/adapter/CameraBasicAdapter$BasicViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/powervision/camera/ui/adapter/CameraBasicAdapter$BasicViewHolder;I)V
    .locals 9

    .line 77
    invoke-static {p1}, Lcom/powervision/camera/ui/adapter/CameraBasicAdapter$BasicViewHolder;->access$000(Lcom/powervision/camera/ui/adapter/CameraBasicAdapter$BasicViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/camera/ui/adapter/CameraBasicAdapter;->mList:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/powervision/camera/ui/adapter/CameraBasicAdapter;->getTitle(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    invoke-static {p1}, Lcom/powervision/camera/ui/adapter/CameraBasicAdapter$BasicViewHolder;->access$000(Lcom/powervision/camera/ui/adapter/CameraBasicAdapter$BasicViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 80
    iget-boolean v0, p0, Lcom/powervision/camera/ui/adapter/CameraBasicAdapter;->isAuto:Z

    const-string v1, " evIntValue ="

    const-string v2, "i_camera"

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v0, :cond_5

    if-eqz p2, :cond_4

    if-ne p2, v6, :cond_0

    goto/16 :goto_1

    :cond_0
    if-ne p2, v4, :cond_1

    .line 89
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getEvIntValue()I

    move-result v0

    .line 90
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object v1, p0, Lcom/powervision/camera/ui/adapter/CameraBasicAdapter;->mList:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 92
    invoke-static {p1}, Lcom/powervision/camera/ui/adapter/CameraBasicAdapter$BasicViewHolder;->access$100(Lcom/powervision/camera/ui/adapter/CameraBasicAdapter$BasicViewHolder;)Lcom/powervision/base/views/HPickerView;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/powervision/base/views/HPickerView;->setData(Ljava/util/List;I)V

    .line 93
    invoke-static {p1}, Lcom/powervision/camera/ui/adapter/CameraBasicAdapter$BasicViewHolder;->access$100(Lcom/powervision/camera/ui/adapter/CameraBasicAdapter$BasicViewHolder;)Lcom/powervision/base/views/HPickerView;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/powervision/base/views/HPickerView;->setCallBackResult(Z)V

    .line 94
    invoke-static {p1}, Lcom/powervision/camera/ui/adapter/CameraBasicAdapter$BasicViewHolder;->access$000(Lcom/powervision/camera/ui/adapter/CameraBasicAdapter$BasicViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/camera/ui/adapter/CameraBasicAdapter;->context:Landroid/content/Context;

    sget v2, Lcom/lewis/camera/R$color;->white:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 95
    invoke-static {p1}, Lcom/powervision/camera/ui/adapter/CameraBasicAdapter$BasicViewHolder;->access$100(Lcom/powervision/camera/ui/adapter/CameraBasicAdapter$BasicViewHolder;)Lcom/powervision/base/views/HPickerView;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/powervision/base/views/HPickerView;->setIsAuto(Z)V

    .line 96
    invoke-static {p1}, Lcom/powervision/camera/ui/adapter/CameraBasicAdapter$BasicViewHolder;->access$100(Lcom/powervision/camera/ui/adapter/CameraBasicAdapter$BasicViewHolder;)Lcom/powervision/base/views/HPickerView;

    move-result-object v0

    new-instance v1, Lcom/powervision/camera/ui/adapter/-$$Lambda$CameraBasicAdapter$ZKuCYOEwmuLT17KnSySdoUODP8g;

    invoke-direct {v1, p0}, Lcom/powervision/camera/ui/adapter/-$$Lambda$CameraBasicAdapter$ZKuCYOEwmuLT17KnSySdoUODP8g;-><init>(Lcom/powervision/camera/ui/adapter/CameraBasicAdapter;)V

    invoke-virtual {v0, v1}, Lcom/powervision/base/views/HPickerView;->setOnScrollListener(Lcom/powervision/base/views/HPickerView$OnScrollListener;)V

    .line 104
    invoke-static {p1}, Lcom/powervision/camera/ui/adapter/CameraBasicAdapter$BasicViewHolder;->access$100(Lcom/powervision/camera/ui/adapter/CameraBasicAdapter$BasicViewHolder;)Lcom/powervision/base/views/HPickerView;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/camera/ui/adapter/CameraBasicAdapter;->evPickerView:Lcom/powervision/base/views/HPickerView;

    goto/16 :goto_5

    :cond_1
    if-ne p2, v3, :cond_e

    .line 106
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getMeteringMode()I

    move-result v0

    .line 107
    invoke-static {p1}, Lcom/powervision/camera/ui/adapter/CameraBasicAdapter$BasicViewHolder;->access$100(Lcom/powervision/camera/ui/adapter/CameraBasicAdapter$BasicViewHolder;)Lcom/powervision/base/views/HPickerView;

    move-result-object v1

    iget-object v2, p0, Lcom/powervision/camera/ui/adapter/CameraBasicAdapter;->mList:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-virtual {v1, v2, v0}, Lcom/powervision/base/views/HPickerView;->setData(Ljava/util/List;I)V

    .line 108
    invoke-static {p1}, Lcom/powervision/camera/ui/adapter/CameraBasicAdapter$BasicViewHolder;->access$100(Lcom/powervision/camera/ui/adapter/CameraBasicAdapter$BasicViewHolder;)Lcom/powervision/base/views/HPickerView;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/powervision/base/views/HPickerView;->setCallBackResult(Z)V

    .line 109
    invoke-static {p1}, Lcom/powervision/camera/ui/adapter/CameraBasicAdapter$BasicViewHolder;->access$100(Lcom/powervision/camera/ui/adapter/CameraBasicAdapter$BasicViewHolder;)Lcom/powervision/base/views/HPickerView;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/powervision/base/views/HPickerView;->setIsAuto(Z)V

    .line 110
    invoke-static {p1}, Lcom/powervision/camera/ui/adapter/CameraBasicAdapter$BasicViewHolder;->access$100(Lcom/powervision/camera/ui/adapter/CameraBasicAdapter$BasicViewHolder;)Lcom/powervision/base/views/HPickerView;

    move-result-object v0

    new-instance v1, Lcom/powervision/camera/ui/adapter/-$$Lambda$CameraBasicAdapter$_ogoD7i7_Aun77XL90N30v3oBc4;

    invoke-direct {v1, p0, p1}, Lcom/powervision/camera/ui/adapter/-$$Lambda$CameraBasicAdapter$_ogoD7i7_Aun77XL90N30v3oBc4;-><init>(Lcom/powervision/camera/ui/adapter/CameraBasicAdapter;Lcom/powervision/camera/ui/adapter/CameraBasicAdapter$BasicViewHolder;)V

    invoke-virtual {v0, v1}, Lcom/powervision/base/views/HPickerView;->setOnScrollListener(Lcom/powervision/base/views/HPickerView$OnScrollListener;)V

    .line 118
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->isEvOnly()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getCameraCurrentStatus()I

    move-result v0

    if-ne v0, v4, :cond_2

    goto :goto_0

    .line 122
    :cond_2
    invoke-static {p1}, Lcom/powervision/camera/ui/adapter/CameraBasicAdapter$BasicViewHolder;->access$000(Lcom/powervision/camera/ui/adapter/CameraBasicAdapter$BasicViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/camera/ui/adapter/CameraBasicAdapter;->context:Landroid/content/Context;

    sget v2, Lcom/lewis/camera/R$color;->white:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 123
    invoke-static {p1}, Lcom/powervision/camera/ui/adapter/CameraBasicAdapter$BasicViewHolder;->access$100(Lcom/powervision/camera/ui/adapter/CameraBasicAdapter$BasicViewHolder;)Lcom/powervision/base/views/HPickerView;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/powervision/base/views/HPickerView;->setIsAuto(Z)V

    goto/16 :goto_5

    .line 119
    :cond_3
    :goto_0
    invoke-static {p1}, Lcom/powervision/camera/ui/adapter/CameraBasicAdapter$BasicViewHolder;->access$000(Lcom/powervision/camera/ui/adapter/CameraBasicAdapter$BasicViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/camera/ui/adapter/CameraBasicAdapter;->context:Landroid/content/Context;

    sget v2, Lcom/lewis/camera/R$color;->white_alpha_60:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 120
    invoke-static {p1}, Lcom/powervision/camera/ui/adapter/CameraBasicAdapter$BasicViewHolder;->access$100(Lcom/powervision/camera/ui/adapter/CameraBasicAdapter$BasicViewHolder;)Lcom/powervision/base/views/HPickerView;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/powervision/base/views/HPickerView;->setIsAuto(Z)V

    goto/16 :goto_5

    .line 82
    :cond_4
    :goto_1
    invoke-static {p1}, Lcom/powervision/camera/ui/adapter/CameraBasicAdapter$BasicViewHolder;->access$000(Lcom/powervision/camera/ui/adapter/CameraBasicAdapter$BasicViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/camera/ui/adapter/CameraBasicAdapter;->context:Landroid/content/Context;

    sget v2, Lcom/lewis/camera/R$color;->white_alpha_60:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 83
    invoke-static {p1}, Lcom/powervision/camera/ui/adapter/CameraBasicAdapter$BasicViewHolder;->access$100(Lcom/powervision/camera/ui/adapter/CameraBasicAdapter$BasicViewHolder;)Lcom/powervision/base/views/HPickerView;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/camera/ui/adapter/CameraBasicAdapter;->mList:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/powervision/base/views/HPickerView;->setData(Ljava/util/List;)V

    .line 84
    invoke-static {p1}, Lcom/powervision/camera/ui/adapter/CameraBasicAdapter$BasicViewHolder;->access$100(Lcom/powervision/camera/ui/adapter/CameraBasicAdapter$BasicViewHolder;)Lcom/powervision/base/views/HPickerView;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/powervision/base/views/HPickerView;->setCallBackResult(Z)V

    .line 85
    invoke-static {p1}, Lcom/powervision/camera/ui/adapter/CameraBasicAdapter$BasicViewHolder;->access$100(Lcom/powervision/camera/ui/adapter/CameraBasicAdapter$BasicViewHolder;)Lcom/powervision/base/views/HPickerView;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/powervision/base/views/HPickerView;->setIsAuto(Z)V

    .line 86
    invoke-static {p1}, Lcom/powervision/camera/ui/adapter/CameraBasicAdapter$BasicViewHolder;->access$100(Lcom/powervision/camera/ui/adapter/CameraBasicAdapter$BasicViewHolder;)Lcom/powervision/base/views/HPickerView;

    move-result-object v0

    sget v1, Lcom/lewis/camera/R$color;->gray_color:I

    invoke-virtual {v0, v1}, Lcom/powervision/base/views/HPickerView;->setSelectPaintColor(I)V

    goto/16 :goto_5

    :cond_5
    const-string v0, "p_camera"

    if-nez p2, :cond_7

    .line 128
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/camera/camera/CameraManager;->getIsoType()I

    move-result v1

    .line 129
    iget-object v2, p0, Lcom/powervision/camera/ui/adapter/CameraBasicAdapter;->mList:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 130
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-ge v1, v7, :cond_6

    .line 131
    invoke-static {p1}, Lcom/powervision/camera/ui/adapter/CameraBasicAdapter$BasicViewHolder;->access$100(Lcom/powervision/camera/ui/adapter/CameraBasicAdapter$BasicViewHolder;)Lcom/powervision/base/views/HPickerView;

    move-result-object v7

    invoke-virtual {v7, v2, v1}, Lcom/powervision/base/views/HPickerView;->setData(Ljava/util/List;I)V

    goto :goto_2

    .line 133
    :cond_6
    invoke-static {p1}, Lcom/powervision/camera/ui/adapter/CameraBasicAdapter$BasicViewHolder;->access$100(Lcom/powervision/camera/ui/adapter/CameraBasicAdapter$BasicViewHolder;)Lcom/powervision/base/views/HPickerView;

    move-result-object v7

    invoke-virtual {v7, v2, v5}, Lcom/powervision/base/views/HPickerView;->setData(Ljava/util/List;I)V

    .line 135
    :goto_2
    invoke-static {p1}, Lcom/powervision/camera/ui/adapter/CameraBasicAdapter$BasicViewHolder;->access$100(Lcom/powervision/camera/ui/adapter/CameraBasicAdapter$BasicViewHolder;)Lcom/powervision/base/views/HPickerView;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/powervision/base/views/HPickerView;->setCallBackResult(Z)V

    .line 136
    invoke-static {p1}, Lcom/powervision/camera/ui/adapter/CameraBasicAdapter$BasicViewHolder;->access$100(Lcom/powervision/camera/ui/adapter/CameraBasicAdapter$BasicViewHolder;)Lcom/powervision/base/views/HPickerView;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/powervision/base/views/HPickerView;->setIsAuto(Z)V

    .line 137
    invoke-static {p1}, Lcom/powervision/camera/ui/adapter/CameraBasicAdapter$BasicViewHolder;->access$100(Lcom/powervision/camera/ui/adapter/CameraBasicAdapter$BasicViewHolder;)Lcom/powervision/base/views/HPickerView;

    move-result-object v2

    sget v7, Lcom/lewis/camera/R$color;->color_3A75F2:I

    invoke-virtual {v2, v7}, Lcom/powervision/base/views/HPickerView;->setSelectPaintColor(I)V

    .line 138
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "   ..iso\u503c \u3002\u3002\u3002\u3002\u3002..exptimeValue="

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    invoke-static {p1}, Lcom/powervision/camera/ui/adapter/CameraBasicAdapter$BasicViewHolder;->access$100(Lcom/powervision/camera/ui/adapter/CameraBasicAdapter$BasicViewHolder;)Lcom/powervision/base/views/HPickerView;

    move-result-object v0

    new-instance v1, Lcom/powervision/camera/ui/adapter/-$$Lambda$CameraBasicAdapter$JVy6m7UTqdKE7SZWpiIMn1j7kVU;

    invoke-direct {v1, p0, p1}, Lcom/powervision/camera/ui/adapter/-$$Lambda$CameraBasicAdapter$JVy6m7UTqdKE7SZWpiIMn1j7kVU;-><init>(Lcom/powervision/camera/ui/adapter/CameraBasicAdapter;Lcom/powervision/camera/ui/adapter/CameraBasicAdapter$BasicViewHolder;)V

    invoke-virtual {v0, v1}, Lcom/powervision/base/views/HPickerView;->setOnScrollListener(Lcom/powervision/base/views/HPickerView$OnScrollListener;)V

    .line 146
    invoke-static {p1}, Lcom/powervision/camera/ui/adapter/CameraBasicAdapter$BasicViewHolder;->access$100(Lcom/powervision/camera/ui/adapter/CameraBasicAdapter$BasicViewHolder;)Lcom/powervision/base/views/HPickerView;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/camera/ui/adapter/CameraBasicAdapter;->isodPickerView:Lcom/powervision/base/views/HPickerView;

    goto/16 :goto_4

    :cond_7
    if-ne p2, v6, :cond_9

    .line 148
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/camera/camera/CameraManager;->getExptimeValue()I

    move-result v1

    .line 149
    iget-object v2, p0, Lcom/powervision/camera/ui/adapter/CameraBasicAdapter;->mList:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 150
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-ge v1, v7, :cond_8

    .line 151
    invoke-static {p1}, Lcom/powervision/camera/ui/adapter/CameraBasicAdapter$BasicViewHolder;->access$100(Lcom/powervision/camera/ui/adapter/CameraBasicAdapter$BasicViewHolder;)Lcom/powervision/base/views/HPickerView;

    move-result-object v7

    invoke-virtual {v7, v2, v1}, Lcom/powervision/base/views/HPickerView;->setData(Ljava/util/List;I)V

    goto :goto_3

    .line 153
    :cond_8
    invoke-static {p1}, Lcom/powervision/camera/ui/adapter/CameraBasicAdapter$BasicViewHolder;->access$100(Lcom/powervision/camera/ui/adapter/CameraBasicAdapter$BasicViewHolder;)Lcom/powervision/base/views/HPickerView;

    move-result-object v7

    invoke-virtual {v7, v2, v5}, Lcom/powervision/base/views/HPickerView;->setData(Ljava/util/List;I)V

    .line 155
    :goto_3
    invoke-static {p1}, Lcom/powervision/camera/ui/adapter/CameraBasicAdapter$BasicViewHolder;->access$100(Lcom/powervision/camera/ui/adapter/CameraBasicAdapter$BasicViewHolder;)Lcom/powervision/base/views/HPickerView;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/powervision/base/views/HPickerView;->setCallBackResult(Z)V

    .line 156
    invoke-static {p1}, Lcom/powervision/camera/ui/adapter/CameraBasicAdapter$BasicViewHolder;->access$100(Lcom/powervision/camera/ui/adapter/CameraBasicAdapter$BasicViewHolder;)Lcom/powervision/base/views/HPickerView;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/powervision/base/views/HPickerView;->setIsAuto(Z)V

    .line 157
    invoke-static {p1}, Lcom/powervision/camera/ui/adapter/CameraBasicAdapter$BasicViewHolder;->access$100(Lcom/powervision/camera/ui/adapter/CameraBasicAdapter$BasicViewHolder;)Lcom/powervision/base/views/HPickerView;

    move-result-object v2

    sget v7, Lcom/lewis/camera/R$color;->color_3A75F2:I

    invoke-virtual {v2, v7}, Lcom/powervision/base/views/HPickerView;->setSelectPaintColor(I)V

    .line 158
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "   ..\u5feb\u95e8\u901f\u5ea6\u3002\u3002\u3002..exptimeValue="

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    invoke-static {p1}, Lcom/powervision/camera/ui/adapter/CameraBasicAdapter$BasicViewHolder;->access$100(Lcom/powervision/camera/ui/adapter/CameraBasicAdapter$BasicViewHolder;)Lcom/powervision/base/views/HPickerView;

    move-result-object v0

    new-instance v2, Lcom/powervision/camera/ui/adapter/-$$Lambda$CameraBasicAdapter$sMUxAe4_FTFhx7H6wUK-BDfbfzs;

    invoke-direct {v2, p0, p1, v1}, Lcom/powervision/camera/ui/adapter/-$$Lambda$CameraBasicAdapter$sMUxAe4_FTFhx7H6wUK-BDfbfzs;-><init>(Lcom/powervision/camera/ui/adapter/CameraBasicAdapter;Lcom/powervision/camera/ui/adapter/CameraBasicAdapter$BasicViewHolder;I)V

    invoke-virtual {v0, v2}, Lcom/powervision/base/views/HPickerView;->setOnScrollListener(Lcom/powervision/base/views/HPickerView$OnScrollListener;)V

    .line 167
    invoke-static {p1}, Lcom/powervision/camera/ui/adapter/CameraBasicAdapter$BasicViewHolder;->access$100(Lcom/powervision/camera/ui/adapter/CameraBasicAdapter$BasicViewHolder;)Lcom/powervision/base/views/HPickerView;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/camera/ui/adapter/CameraBasicAdapter;->shutterPickerView:Lcom/powervision/base/views/HPickerView;

    goto/16 :goto_4

    :cond_9
    if-ne p2, v4, :cond_a

    .line 169
    invoke-static {p1}, Lcom/powervision/camera/ui/adapter/CameraBasicAdapter$BasicViewHolder;->access$000(Lcom/powervision/camera/ui/adapter/CameraBasicAdapter$BasicViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v7, p0, Lcom/powervision/camera/ui/adapter/CameraBasicAdapter;->context:Landroid/content/Context;

    sget v8, Lcom/lewis/camera/R$color;->white_alpha_60:I

    invoke-static {v7, v8}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 170
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getEvIntValue()I

    move-result v0

    .line 171
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    invoke-static {p1}, Lcom/powervision/camera/ui/adapter/CameraBasicAdapter$BasicViewHolder;->access$100(Lcom/powervision/camera/ui/adapter/CameraBasicAdapter$BasicViewHolder;)Lcom/powervision/base/views/HPickerView;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/camera/ui/adapter/CameraBasicAdapter;->mList:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0, v1, v5}, Lcom/powervision/base/views/HPickerView;->setData(Ljava/util/List;I)V

    .line 173
    invoke-static {p1}, Lcom/powervision/camera/ui/adapter/CameraBasicAdapter$BasicViewHolder;->access$100(Lcom/powervision/camera/ui/adapter/CameraBasicAdapter$BasicViewHolder;)Lcom/powervision/base/views/HPickerView;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/powervision/base/views/HPickerView;->setCallBackResult(Z)V

    .line 174
    invoke-static {p1}, Lcom/powervision/camera/ui/adapter/CameraBasicAdapter$BasicViewHolder;->access$100(Lcom/powervision/camera/ui/adapter/CameraBasicAdapter$BasicViewHolder;)Lcom/powervision/base/views/HPickerView;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/powervision/base/views/HPickerView;->setIsAuto(Z)V

    goto :goto_4

    :cond_a
    if-ne p2, v3, :cond_b

    .line 176
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getMeteringMode()I

    .line 177
    invoke-static {p1}, Lcom/powervision/camera/ui/adapter/CameraBasicAdapter$BasicViewHolder;->access$000(Lcom/powervision/camera/ui/adapter/CameraBasicAdapter$BasicViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/camera/ui/adapter/CameraBasicAdapter;->context:Landroid/content/Context;

    sget v2, Lcom/lewis/camera/R$color;->white_alpha_60:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 178
    invoke-static {p1}, Lcom/powervision/camera/ui/adapter/CameraBasicAdapter$BasicViewHolder;->access$100(Lcom/powervision/camera/ui/adapter/CameraBasicAdapter$BasicViewHolder;)Lcom/powervision/base/views/HPickerView;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/camera/ui/adapter/CameraBasicAdapter;->mList:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0, v1, v5}, Lcom/powervision/base/views/HPickerView;->setData(Ljava/util/List;I)V

    .line 179
    invoke-static {p1}, Lcom/powervision/camera/ui/adapter/CameraBasicAdapter$BasicViewHolder;->access$100(Lcom/powervision/camera/ui/adapter/CameraBasicAdapter$BasicViewHolder;)Lcom/powervision/base/views/HPickerView;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/powervision/base/views/HPickerView;->setCallBackResult(Z)V

    .line 180
    invoke-static {p1}, Lcom/powervision/camera/ui/adapter/CameraBasicAdapter$BasicViewHolder;->access$100(Lcom/powervision/camera/ui/adapter/CameraBasicAdapter$BasicViewHolder;)Lcom/powervision/base/views/HPickerView;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/powervision/base/views/HPickerView;->setIsAuto(Z)V

    .line 182
    :cond_b
    :goto_4
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->isEvOnly()Z

    move-result v0

    if-eqz v0, :cond_c

    if-eq p2, v3, :cond_d

    :cond_c
    if-ne p2, v4, :cond_e

    .line 183
    :cond_d
    invoke-static {p1}, Lcom/powervision/camera/ui/adapter/CameraBasicAdapter$BasicViewHolder;->access$000(Lcom/powervision/camera/ui/adapter/CameraBasicAdapter$BasicViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/camera/ui/adapter/CameraBasicAdapter;->context:Landroid/content/Context;

    sget v2, Lcom/lewis/camera/R$color;->white_alpha_60:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 184
    invoke-static {p1}, Lcom/powervision/camera/ui/adapter/CameraBasicAdapter$BasicViewHolder;->access$100(Lcom/powervision/camera/ui/adapter/CameraBasicAdapter$BasicViewHolder;)Lcom/powervision/base/views/HPickerView;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/powervision/base/views/HPickerView;->setIsAuto(Z)V

    .line 188
    :cond_e
    :goto_5
    invoke-virtual {p0}, Lcom/powervision/camera/ui/adapter/CameraBasicAdapter;->getItemCount()I

    move-result v0

    sub-int/2addr v0, v6

    if-ne p2, v0, :cond_f

    .line 189
    invoke-static {p1}, Lcom/powervision/camera/ui/adapter/CameraBasicAdapter$BasicViewHolder;->access$200(Lcom/powervision/camera/ui/adapter/CameraBasicAdapter$BasicViewHolder;)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6

    .line 191
    :cond_f
    invoke-static {p1}, Lcom/powervision/camera/ui/adapter/CameraBasicAdapter$BasicViewHolder;->access$200(Lcom/powervision/camera/ui/adapter/CameraBasicAdapter$BasicViewHolder;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    :goto_6
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 31
    invoke-virtual {p0, p1, p2}, Lcom/powervision/camera/ui/adapter/CameraBasicAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/powervision/camera/ui/adapter/CameraBasicAdapter$BasicViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/powervision/camera/ui/adapter/CameraBasicAdapter$BasicViewHolder;
    .locals 2

    .line 71
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/lewis/camera/R$layout;->aircraft_camera_base_item:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 72
    new-instance p2, Lcom/powervision/camera/ui/adapter/CameraBasicAdapter$BasicViewHolder;

    invoke-direct {p2, p1}, Lcom/powervision/camera/ui/adapter/CameraBasicAdapter$BasicViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public bridge synthetic onFailedToRecycleView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    .line 31
    check-cast p1, Lcom/powervision/camera/ui/adapter/CameraBasicAdapter$BasicViewHolder;

    invoke-virtual {p0, p1}, Lcom/powervision/camera/ui/adapter/CameraBasicAdapter;->onFailedToRecycleView(Lcom/powervision/camera/ui/adapter/CameraBasicAdapter$BasicViewHolder;)Z

    move-result p1

    return p1
.end method

.method public onFailedToRecycleView(Lcom/powervision/camera/ui/adapter/CameraBasicAdapter$BasicViewHolder;)Z
    .locals 0

    .line 203
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onFailedToRecycleView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    move-result p1

    return p1
.end method

.method public setData(Landroid/util/SparseArray;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 214
    iput-object p1, p0, Lcom/powervision/camera/ui/adapter/CameraBasicAdapter;->mList:Landroid/util/SparseArray;

    .line 215
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/camera/camera/CameraManager;->getExposureMode()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/powervision/camera/ui/adapter/CameraBasicAdapter;->isAuto:Z

    .line 216
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/camera/camera/CameraManager;->isEvOnly()Z

    move-result p1

    iput-boolean p1, p0, Lcom/powervision/camera/ui/adapter/CameraBasicAdapter;->evOnly:Z

    .line 217
    invoke-virtual {p0}, Lcom/powervision/camera/ui/adapter/CameraBasicAdapter;->notifyDataSetChanged()V

    .line 218
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ev == "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/powervision/camera/ui/adapter/CameraBasicAdapter;->evOnly:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;)V

    return-void
.end method
