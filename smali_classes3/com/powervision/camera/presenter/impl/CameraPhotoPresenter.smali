.class public Lcom/powervision/camera/presenter/impl/CameraPhotoPresenter;
.super Lcom/powervision/base/base/BasePresenter;
.source "CameraPhotoPresenter.java"

# interfaces
.implements Lcom/powervision/camera/presenter/ICameraPhotoPresenter;
.implements Lcom/powervision/camera/camera/CameraListener$CameraSetCaptureModeListener;
.implements Lcom/powervision/camera/camera/CameraListener$CameraSetWhiteBalanceListener;
.implements Lcom/powervision/camera/camera/CameraListener$CameraResolutionChangeListener;
.implements Lcom/powervision/camera/camera/CameraListener$CameraNotifySetPhotoFileFormatListener;
.implements Lcom/powervision/camera/camera/CameraListener$CameraSetPhotoStyleListener;
.implements Lcom/powervision/camera/camera/CameraListener$CameraSetLuminanceListener;
.implements Lcom/powervision/camera/camera/CameraListener$CameraSetContrastListener;
.implements Lcom/powervision/camera/camera/CameraListener$CameraSetSaturationListener;
.implements Lcom/powervision/camera/camera/CameraListener$CameraNotifyOnGetPhotoStyleListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/powervision/base/base/BasePresenter<",
        "Lcom/powervision/camera/ui/view/ICameraPhotoView;",
        "Lcom/powervision/camera/model/impl/CameraPhotoModel;",
        ">;",
        "Lcom/powervision/camera/presenter/ICameraPhotoPresenter;",
        "Lcom/powervision/camera/camera/CameraListener$CameraSetCaptureModeListener;",
        "Lcom/powervision/camera/camera/CameraListener$CameraSetWhiteBalanceListener;",
        "Lcom/powervision/camera/camera/CameraListener$CameraResolutionChangeListener;",
        "Lcom/powervision/camera/camera/CameraListener$CameraNotifySetPhotoFileFormatListener;",
        "Lcom/powervision/camera/camera/CameraListener$CameraSetPhotoStyleListener;",
        "Lcom/powervision/camera/camera/CameraListener$CameraSetLuminanceListener;",
        "Lcom/powervision/camera/camera/CameraListener$CameraSetContrastListener;",
        "Lcom/powervision/camera/camera/CameraListener$CameraSetSaturationListener;",
        "Lcom/powervision/camera/camera/CameraListener$CameraNotifyOnGetPhotoStyleListener;"
    }
.end annotation


# instance fields
.field private cameraManager:Lcom/powervision/camera/camera/CameraManager;

.field private mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/chad/library/adapter/base/entity/MultiItemEntity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/powervision/base/base/BasePresenter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCameraPhotoData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/chad/library/adapter/base/entity/MultiItemEntity;",
            ">;"
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lcom/powervision/camera/presenter/impl/CameraPhotoPresenter;->mData:Ljava/util/List;

    if-nez v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/powervision/camera/presenter/impl/CameraPhotoPresenter;->mMvpModel:Lcom/powervision/base/base/BaseModel;

    check-cast v0, Lcom/powervision/camera/model/impl/CameraPhotoModel;

    invoke-virtual {v0}, Lcom/powervision/camera/model/impl/CameraPhotoModel;->getCameraPhotoData()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/camera/presenter/impl/CameraPhotoPresenter;->mData:Ljava/util/List;

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/powervision/camera/presenter/impl/CameraPhotoPresenter;->mData:Ljava/util/List;

    return-object v0
.end method

.method public onGetPhotoStyle()V
    .locals 1

    .line 406
    iget-object v0, p0, Lcom/powervision/camera/presenter/impl/CameraPhotoPresenter;->mMvpModel:Lcom/powervision/base/base/BaseModel;

    if-nez v0, :cond_0

    return-void

    .line 409
    :cond_0
    iget-object v0, p0, Lcom/powervision/camera/presenter/impl/CameraPhotoPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast v0, Lcom/powervision/camera/ui/view/ICameraPhotoView;

    invoke-interface {v0}, Lcom/powervision/camera/ui/view/ICameraPhotoView;->onGetCustomStyleValue()V

    return-void
.end method

.method public onPhotoResolutionChange(Ljava/lang/String;)V
    .locals 7

    .line 311
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getCameraPhotoSize()I

    move-result v0

    .line 312
    iget-object v1, p0, Lcom/powervision/camera/presenter/impl/CameraPhotoPresenter;->mData:Ljava/util/List;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chad/library/adapter/base/entity/MultiItemEntity;

    .line 313
    instance-of v1, v1, Lcom/powervision/camera/model/bean/CameraPhotoGroup2;

    if-eqz v1, :cond_4

    .line 314
    iget-object v1, p0, Lcom/powervision/camera/presenter/impl/CameraPhotoPresenter;->mData:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/camera/model/bean/CameraPhotoGroup2;

    .line 315
    iget-object v3, p0, Lcom/powervision/camera/presenter/impl/CameraPhotoPresenter;->mMvpModel:Lcom/powervision/base/base/BaseModel;

    if-eqz v3, :cond_4

    .line 316
    iget-object v3, p0, Lcom/powervision/camera/presenter/impl/CameraPhotoPresenter;->mMvpModel:Lcom/powervision/base/base/BaseModel;

    check-cast v3, Lcom/powervision/camera/model/impl/CameraPhotoModel;

    invoke-virtual {v3, v0}, Lcom/powervision/camera/model/impl/CameraPhotoModel;->getPhotoResolution(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/powervision/camera/model/bean/CameraPhotoGroup2;->setItemValue(Ljava/lang/String;)V

    .line 317
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_1

    const-string v3, "0x105"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 p1, 0x0

    .line 318
    :goto_0
    invoke-virtual {v1}, Lcom/powervision/camera/model/bean/CameraPhotoGroup2;->getSubItems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge p1, v3, :cond_3

    .line 319
    invoke-virtual {v1, p1}, Lcom/powervision/camera/model/bean/CameraPhotoGroup2;->getSubItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/powervision/camera/model/bean/CameraPhotoChild2;

    if-ne p1, v0, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    :goto_1
    invoke-virtual {v3, v5}, Lcom/powervision/camera/model/bean/CameraPhotoChild2;->setSelect(Z)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 322
    :goto_2
    invoke-virtual {v1}, Lcom/powervision/camera/model/bean/CameraPhotoGroup2;->getSubItems()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_3

    .line 323
    invoke-virtual {v1, v3}, Lcom/powervision/camera/model/bean/CameraPhotoGroup2;->getSubItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/powervision/camera/model/bean/CameraPhotoChild2;

    const-string v6, "0"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    if-ne v3, v0, :cond_2

    const/4 v6, 0x1

    goto :goto_3

    :cond_2
    const/4 v6, 0x0

    :goto_3
    invoke-virtual {v5, v6}, Lcom/powervision/camera/model/bean/CameraPhotoChild2;->setSelect(Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 326
    :cond_3
    iget-object p1, p0, Lcom/powervision/camera/presenter/impl/CameraPhotoPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast p1, Lcom/powervision/camera/ui/view/ICameraPhotoView;

    invoke-interface {p1}, Lcom/powervision/camera/ui/view/ICameraPhotoView;->notifyAdapter()V

    :cond_4
    return-void
.end method

.method public onSetCaptureMode(Ljava/lang/String;)V
    .locals 3

    const-string v0, "destroy"

    .line 199
    invoke-static {v0}, Lcom/orhanobut/logger/Logger;->t(Ljava/lang/String;)Lcom/orhanobut/logger/Printer;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "result "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/orhanobut/logger/Printer;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 200
    invoke-virtual {p0, p1}, Lcom/powervision/camera/presenter/impl/CameraPhotoPresenter;->updatePhotoMode(Ljava/lang/String;)V

    return-void
.end method

.method public onSetContrast(Ljava/lang/String;)V
    .locals 1

    .line 390
    iget-object v0, p0, Lcom/powervision/camera/presenter/impl/CameraPhotoPresenter;->mMvpModel:Lcom/powervision/base/base/BaseModel;

    if-nez v0, :cond_0

    return-void

    .line 393
    :cond_0
    iget-object v0, p0, Lcom/powervision/camera/presenter/impl/CameraPhotoPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast v0, Lcom/powervision/camera/ui/view/ICameraPhotoView;

    invoke-interface {v0, p1}, Lcom/powervision/camera/ui/view/ICameraPhotoView;->onSetContrast(Ljava/lang/String;)V

    return-void
.end method

.method public onSetLuminance(Ljava/lang/String;)V
    .locals 1

    .line 382
    iget-object v0, p0, Lcom/powervision/camera/presenter/impl/CameraPhotoPresenter;->mMvpModel:Lcom/powervision/base/base/BaseModel;

    if-nez v0, :cond_0

    return-void

    .line 385
    :cond_0
    iget-object v0, p0, Lcom/powervision/camera/presenter/impl/CameraPhotoPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast v0, Lcom/powervision/camera/ui/view/ICameraPhotoView;

    invoke-interface {v0, p1}, Lcom/powervision/camera/ui/view/ICameraPhotoView;->onSetLuminance(Ljava/lang/String;)V

    return-void
.end method

.method public onSetPhotoStyle(Ljava/lang/String;)V
    .locals 3

    .line 368
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getStyleMode()I

    move-result v0

    .line 369
    iget-object v1, p0, Lcom/powervision/camera/presenter/impl/CameraPhotoPresenter;->mData:Ljava/util/List;

    const/4 v2, 0x4

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chad/library/adapter/base/entity/MultiItemEntity;

    .line 370
    instance-of v1, v1, Lcom/powervision/camera/model/bean/CameraPhotoGroup3;

    if-eqz v1, :cond_0

    .line 371
    iget-object v1, p0, Lcom/powervision/camera/presenter/impl/CameraPhotoPresenter;->mData:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/camera/model/bean/CameraPhotoGroup3;

    .line 373
    iget-object v2, p0, Lcom/powervision/camera/presenter/impl/CameraPhotoPresenter;->mMvpModel:Lcom/powervision/base/base/BaseModel;

    check-cast v2, Lcom/powervision/camera/model/impl/CameraPhotoModel;

    invoke-virtual {v2, v0}, Lcom/powervision/camera/model/impl/CameraPhotoModel;->getPhotoStyleMode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/powervision/camera/model/bean/CameraPhotoGroup3;->setItemValue(Ljava/lang/String;)V

    .line 375
    iget-object v1, p0, Lcom/powervision/camera/presenter/impl/CameraPhotoPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast v1, Lcom/powervision/camera/ui/view/ICameraPhotoView;

    invoke-interface {v1, p1, v0}, Lcom/powervision/camera/ui/view/ICameraPhotoView;->onSetPhotoStyle(Ljava/lang/String;I)V

    .line 376
    iget-object p1, p0, Lcom/powervision/camera/presenter/impl/CameraPhotoPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast p1, Lcom/powervision/camera/ui/view/ICameraPhotoView;

    invoke-interface {p1}, Lcom/powervision/camera/ui/view/ICameraPhotoView;->notifyAdapter()V

    :cond_0
    return-void
.end method

.method public onSetSaturation(Ljava/lang/String;)V
    .locals 1

    .line 398
    iget-object v0, p0, Lcom/powervision/camera/presenter/impl/CameraPhotoPresenter;->mMvpModel:Lcom/powervision/base/base/BaseModel;

    if-nez v0, :cond_0

    return-void

    .line 401
    :cond_0
    iget-object v0, p0, Lcom/powervision/camera/presenter/impl/CameraPhotoPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast v0, Lcom/powervision/camera/ui/view/ICameraPhotoView;

    invoke-interface {v0, p1}, Lcom/powervision/camera/ui/view/ICameraPhotoView;->onSetSaturation(Ljava/lang/String;)V

    return-void
.end method

.method public onSetWhiteBalance(Ljava/lang/String;)V
    .locals 7

    .line 277
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getWbType()I

    move-result v0

    const/4 v1, 0x6

    const/4 v2, 0x5

    if-le v0, v2, :cond_0

    const/4 v0, 0x6

    .line 281
    :cond_0
    iget-object v2, p0, Lcom/powervision/camera/presenter/impl/CameraPhotoPresenter;->mData:Ljava/util/List;

    const/4 v3, 0x3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/chad/library/adapter/base/entity/MultiItemEntity;

    .line 282
    instance-of v2, v2, Lcom/powervision/camera/model/bean/CameraPhotoGroup1;

    if-eqz v2, :cond_4

    .line 283
    iget-object v2, p0, Lcom/powervision/camera/presenter/impl/CameraPhotoPresenter;->mData:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/powervision/camera/model/bean/CameraPhotoGroup1;

    .line 284
    iget-object v3, p0, Lcom/powervision/camera/presenter/impl/CameraPhotoPresenter;->mMvpModel:Lcom/powervision/base/base/BaseModel;

    check-cast v3, Lcom/powervision/camera/model/impl/CameraPhotoModel;

    invoke-virtual {v3, v0}, Lcom/powervision/camera/model/impl/CameraPhotoModel;->getWhiteBlackSelectPic(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/powervision/camera/model/bean/CameraPhotoGroup1;->setImageResId(I)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 286
    :goto_0
    invoke-virtual {v2}, Lcom/powervision/camera/model/bean/CameraPhotoGroup1;->getSubItems()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 287
    invoke-virtual {v2, v4}, Lcom/powervision/camera/model/bean/CameraPhotoGroup1;->getSubItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/powervision/camera/model/bean/CameraPhotoChild1;

    const-string v6, "0"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    if-ne v4, v0, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    invoke-virtual {v5, v6}, Lcom/powervision/camera/model/bean/CameraPhotoChild1;->setSelect(Z)V

    if-ne v0, v1, :cond_2

    if-ne v4, v1, :cond_2

    .line 289
    invoke-virtual {v2, v4}, Lcom/powervision/camera/model/bean/CameraPhotoGroup1;->getSubItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/powervision/camera/model/bean/CameraPhotoChild1;

    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/powervision/camera/camera/CameraManager;->getWbType()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/powervision/camera/model/bean/CameraPhotoChild1;->setItemName(Ljava/lang/String;)V

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 292
    :cond_3
    iget-object p1, p0, Lcom/powervision/camera/presenter/impl/CameraPhotoPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast p1, Lcom/powervision/camera/ui/view/ICameraPhotoView;

    invoke-interface {p1}, Lcom/powervision/camera/ui/view/ICameraPhotoView;->notifyAdapter()V

    .line 293
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object p1

    const/16 v0, 0xe8

    invoke-virtual {p1, v0}, Lcom/powervision/base/rxbus/RxBus;->post(I)V

    :cond_4
    return-void
.end method

.method public onVideoResolutionChange(Ljava/lang/String;)V
    .locals 1

    .line 299
    iget-object v0, p0, Lcom/powervision/camera/presenter/impl/CameraPhotoPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/powervision/camera/presenter/impl/CameraPhotoPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast v0, Lcom/powervision/camera/ui/view/ICameraPhotoView;

    invoke-interface {v0, p1}, Lcom/powervision/camera/ui/view/ICameraPhotoView;->onVideoResolutionChange(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public photoDataChange(Landroid/util/SparseArray;)V
    .locals 7
    .annotation runtime Lcom/powervision/base/rxbus/Subscribe;
        code = 0x4
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_5

    const/4 v0, 0x0

    .line 168
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    const/4 v2, 0x1

    .line 169
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 170
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 171
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    sub-int/2addr v3, v1

    sub-int/2addr v3, v2

    .line 173
    iget-object v5, p0, Lcom/powervision/camera/presenter/impl/CameraPhotoPresenter;->mData:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/powervision/camera/model/bean/CameraPhotoGroup1;

    const/4 v6, 0x3

    if-ne v1, v6, :cond_0

    .line 175
    iget-object p1, p0, Lcom/powervision/camera/presenter/impl/CameraPhotoPresenter;->mMvpModel:Lcom/powervision/base/base/BaseModel;

    check-cast p1, Lcom/powervision/camera/model/impl/CameraPhotoModel;

    invoke-virtual {p1, v3}, Lcom/powervision/camera/model/impl/CameraPhotoModel;->getWhiteBlackSelectPic(I)I

    move-result p1

    invoke-virtual {v5, p1}, Lcom/powervision/camera/model/bean/CameraPhotoGroup1;->setImageResId(I)V

    goto :goto_0

    :cond_0
    const/4 v6, 0x2

    if-ne v1, v6, :cond_1

    .line 177
    invoke-virtual {v5, v4}, Lcom/powervision/camera/model/bean/CameraPhotoGroup1;->setItemValue(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v4, 0x5

    if-ne v1, v4, :cond_2

    .line 179
    invoke-virtual {v5, p1}, Lcom/powervision/camera/model/bean/CameraPhotoGroup1;->setItemValue(Ljava/lang/String;)V

    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 181
    :goto_1
    invoke-virtual {v5}, Lcom/powervision/camera/model/bean/CameraPhotoGroup1;->getSubItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_4

    if-ne p1, v3, :cond_3

    .line 183
    invoke-virtual {v5, p1}, Lcom/powervision/camera/model/bean/CameraPhotoGroup1;->getSubItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/camera/model/bean/CameraPhotoChild1;

    invoke-virtual {v1, v2}, Lcom/powervision/camera/model/bean/CameraPhotoChild1;->setSelect(Z)V

    goto :goto_2

    .line 185
    :cond_3
    invoke-virtual {v5, p1}, Lcom/powervision/camera/model/bean/CameraPhotoGroup1;->getSubItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/camera/model/bean/CameraPhotoChild1;

    invoke-virtual {v1, v0}, Lcom/powervision/camera/model/bean/CameraPhotoChild1;->setSelect(Z)V

    :goto_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 188
    :cond_4
    iget-object p1, p0, Lcom/powervision/camera/presenter/impl/CameraPhotoPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast p1, Lcom/powervision/camera/ui/view/ICameraPhotoView;

    invoke-interface {p1}, Lcom/powervision/camera/ui/view/ICameraPhotoView;->notifyAdapter()V

    :cond_5
    return-void
.end method

.method public photoModeChange(Landroid/util/SparseIntArray;)V
    .locals 5
    .annotation runtime Lcom/powervision/base/rxbus/Subscribe;
        code = 0x5
    .end annotation

    if-eqz p1, :cond_3

    const/4 v0, 0x0

    .line 142
    invoke-virtual {p1, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    .line 143
    invoke-virtual {p1, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result p1

    sub-int/2addr p1, v1

    const/4 v2, 0x1

    sub-int/2addr p1, v2

    .line 145
    iget-object v3, p0, Lcom/powervision/camera/presenter/impl/CameraPhotoPresenter;->mData:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/powervision/camera/model/bean/CameraPhotoGroup4;

    if-nez v1, :cond_0

    .line 147
    iget-object v1, p0, Lcom/powervision/camera/presenter/impl/CameraPhotoPresenter;->mMvpModel:Lcom/powervision/base/base/BaseModel;

    check-cast v1, Lcom/powervision/camera/model/impl/CameraPhotoModel;

    invoke-virtual {v1, p1}, Lcom/powervision/camera/model/impl/CameraPhotoModel;->getPhotoModelSelectPic(I)I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/powervision/camera/model/bean/CameraPhotoGroup4;->setImageResId(I)V

    :cond_0
    const/4 v1, 0x0

    .line 149
    :goto_0
    invoke-virtual {v3}, Lcom/powervision/camera/model/bean/CameraPhotoGroup4;->getSubItems()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    if-ne v1, p1, :cond_1

    .line 151
    invoke-virtual {v3, v1}, Lcom/powervision/camera/model/bean/CameraPhotoGroup4;->getSubItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/powervision/camera/model/bean/CameraPhotoChild4;

    invoke-virtual {v4, v2}, Lcom/powervision/camera/model/bean/CameraPhotoChild4;->setSelect(Z)V

    goto :goto_1

    .line 153
    :cond_1
    invoke-virtual {v3, v1}, Lcom/powervision/camera/model/bean/CameraPhotoGroup4;->getSubItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/powervision/camera/model/bean/CameraPhotoChild4;

    invoke-virtual {v4, v0}, Lcom/powervision/camera/model/bean/CameraPhotoChild4;->setSelect(Z)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 156
    :cond_2
    iget-object p1, p0, Lcom/powervision/camera/presenter/impl/CameraPhotoPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast p1, Lcom/powervision/camera/ui/view/ICameraPhotoView;

    invoke-interface {p1}, Lcom/powervision/camera/ui/view/ICameraPhotoView;->notifyAdapter()V

    :cond_3
    return-void
.end method

.method public photoModeLevel3Change(Landroid/util/SparseArray;)V
    .locals 6
    .annotation runtime Lcom/powervision/base/rxbus/Subscribe;
        code = 0x7
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_5

    const/4 v0, 0x0

    .line 87
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    const/4 v2, 0x1

    .line 88
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 89
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-int/2addr v3, v4

    sub-int/2addr v3, v2

    sub-int/2addr v4, v1

    sub-int/2addr v4, v2

    .line 92
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 93
    iget-object v5, p0, Lcom/powervision/camera/presenter/impl/CameraPhotoPresenter;->mData:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/camera/model/bean/CameraPhotoGroup4;

    .line 94
    iget-object v5, p0, Lcom/powervision/camera/presenter/impl/CameraPhotoPresenter;->mMvpModel:Lcom/powervision/base/base/BaseModel;

    check-cast v5, Lcom/powervision/camera/model/impl/CameraPhotoModel;

    invoke-virtual {v5, p1}, Lcom/powervision/camera/model/impl/CameraPhotoModel;->getPhotoModeChildSelectPic(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/powervision/camera/model/bean/CameraPhotoGroup4;->setImageResId(I)V

    .line 95
    invoke-virtual {v1, v4}, Lcom/powervision/camera/model/bean/CameraPhotoGroup4;->getSubItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/powervision/camera/model/bean/CameraPhotoChild4;

    const/4 v1, 0x0

    .line 96
    :goto_0
    invoke-virtual {p1}, Lcom/powervision/camera/model/bean/CameraPhotoChild4;->getSubItems()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_4

    .line 97
    invoke-virtual {p1, v1}, Lcom/powervision/camera/model/bean/CameraPhotoChild4;->getSubItem(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lcom/powervision/camera/model/bean/CameraPhotoTimedShotChild;

    if-eqz v4, :cond_1

    .line 98
    invoke-virtual {p1, v1}, Lcom/powervision/camera/model/bean/CameraPhotoChild4;->getSubItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/powervision/camera/model/bean/CameraPhotoTimedShotChild;

    if-ne v1, v3, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    :goto_1
    invoke-virtual {v4, v5}, Lcom/powervision/camera/model/bean/CameraPhotoTimedShotChild;->setSelect(Z)V

    goto :goto_3

    .line 99
    :cond_1
    invoke-virtual {p1, v1}, Lcom/powervision/camera/model/bean/CameraPhotoChild4;->getSubItem(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lcom/powervision/camera/model/bean/CameraPhotoChildChild;

    if-eqz v4, :cond_3

    .line 100
    invoke-virtual {p1, v1}, Lcom/powervision/camera/model/bean/CameraPhotoChild4;->getSubItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/powervision/camera/model/bean/CameraPhotoChildChild;

    if-ne v1, v3, :cond_2

    const/4 v5, 0x1

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    :goto_2
    invoke-virtual {v4, v5}, Lcom/powervision/camera/model/bean/CameraPhotoChildChild;->setSelect(Z)V

    :cond_3
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 103
    :cond_4
    iget-object p1, p0, Lcom/powervision/camera/presenter/impl/CameraPhotoPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast p1, Lcom/powervision/camera/ui/view/ICameraPhotoView;

    invoke-interface {p1}, Lcom/powervision/camera/ui/view/ICameraPhotoView;->notifyAdapter()V

    :cond_5
    return-void
.end method

.method public photoSizeChange(Landroid/util/SparseArray;)V
    .locals 5
    .annotation runtime Lcom/powervision/base/rxbus/Subscribe;
        code = 0x6
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_3

    const/4 v0, 0x0

    .line 115
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    const/4 v2, 0x1

    .line 116
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    sub-int/2addr v3, v1

    sub-int/2addr v3, v2

    .line 118
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 119
    iget-object v4, p0, Lcom/powervision/camera/presenter/impl/CameraPhotoPresenter;->mData:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/powervision/camera/model/bean/CameraPhotoGroup2;

    if-ne v1, v2, :cond_0

    .line 121
    invoke-virtual {v4, p1}, Lcom/powervision/camera/model/bean/CameraPhotoGroup2;->setItemValue(Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    .line 123
    :goto_0
    invoke-virtual {v4}, Lcom/powervision/camera/model/bean/CameraPhotoGroup2;->getSubItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_2

    if-ne p1, v3, :cond_1

    .line 125
    invoke-virtual {v4, p1}, Lcom/powervision/camera/model/bean/CameraPhotoGroup2;->getSubItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/camera/model/bean/CameraPhotoChild2;

    invoke-virtual {v1, v2}, Lcom/powervision/camera/model/bean/CameraPhotoChild2;->setSelect(Z)V

    goto :goto_1

    .line 127
    :cond_1
    invoke-virtual {v4, p1}, Lcom/powervision/camera/model/bean/CameraPhotoGroup2;->getSubItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/camera/model/bean/CameraPhotoChild2;

    invoke-virtual {v1, v0}, Lcom/powervision/camera/model/bean/CameraPhotoChild2;->setSelect(Z)V

    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 130
    :cond_2
    iget-object p1, p0, Lcom/powervision/camera/presenter/impl/CameraPhotoPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast p1, Lcom/powervision/camera/ui/view/ICameraPhotoView;

    invoke-interface {p1}, Lcom/powervision/camera/ui/view/ICameraPhotoView;->notifyAdapter()V

    :cond_3
    return-void
.end method

.method public removeListeners()V
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/powervision/camera/presenter/impl/CameraPhotoPresenter;->cameraManager:Lcom/powervision/camera/camera/CameraManager;

    invoke-virtual {v0, p0}, Lcom/powervision/camera/camera/CameraManager;->removeCameraSetCaptureModeListener(Lcom/powervision/camera/camera/CameraListener$CameraSetCaptureModeListener;)V

    .line 61
    iget-object v0, p0, Lcom/powervision/camera/presenter/impl/CameraPhotoPresenter;->cameraManager:Lcom/powervision/camera/camera/CameraManager;

    invoke-virtual {v0, p0}, Lcom/powervision/camera/camera/CameraManager;->removeCameraSetWhiteBalanceListener(Lcom/powervision/camera/camera/CameraListener$CameraSetWhiteBalanceListener;)V

    .line 62
    iget-object v0, p0, Lcom/powervision/camera/presenter/impl/CameraPhotoPresenter;->cameraManager:Lcom/powervision/camera/camera/CameraManager;

    invoke-virtual {v0, p0}, Lcom/powervision/camera/camera/CameraManager;->removeCameraResolutionChangeListener(Lcom/powervision/camera/camera/CameraListener$CameraResolutionChangeListener;)V

    .line 63
    iget-object v0, p0, Lcom/powervision/camera/presenter/impl/CameraPhotoPresenter;->cameraManager:Lcom/powervision/camera/camera/CameraManager;

    invoke-virtual {v0, p0}, Lcom/powervision/camera/camera/CameraManager;->removeCameraNotifySetPhotoFileFormatListener(Lcom/powervision/camera/camera/CameraListener$CameraNotifySetPhotoFileFormatListener;)V

    .line 64
    iget-object v0, p0, Lcom/powervision/camera/presenter/impl/CameraPhotoPresenter;->cameraManager:Lcom/powervision/camera/camera/CameraManager;

    invoke-virtual {v0, p0}, Lcom/powervision/camera/camera/CameraManager;->removeCameraSetPhotoStyleListener(Lcom/powervision/camera/camera/CameraListener$CameraSetPhotoStyleListener;)V

    .line 65
    iget-object v0, p0, Lcom/powervision/camera/presenter/impl/CameraPhotoPresenter;->cameraManager:Lcom/powervision/camera/camera/CameraManager;

    invoke-virtual {v0, p0}, Lcom/powervision/camera/camera/CameraManager;->removeCameraSetLuminanceListener(Lcom/powervision/camera/camera/CameraListener$CameraSetLuminanceListener;)V

    .line 66
    iget-object v0, p0, Lcom/powervision/camera/presenter/impl/CameraPhotoPresenter;->cameraManager:Lcom/powervision/camera/camera/CameraManager;

    invoke-virtual {v0, p0}, Lcom/powervision/camera/camera/CameraManager;->removeCameraSetContrastListener(Lcom/powervision/camera/camera/CameraListener$CameraSetContrastListener;)V

    .line 67
    iget-object v0, p0, Lcom/powervision/camera/presenter/impl/CameraPhotoPresenter;->cameraManager:Lcom/powervision/camera/camera/CameraManager;

    invoke-virtual {v0, p0}, Lcom/powervision/camera/camera/CameraManager;->removeCameraSetSaturationListener(Lcom/powervision/camera/camera/CameraListener$CameraSetSaturationListener;)V

    .line 68
    iget-object v0, p0, Lcom/powervision/camera/presenter/impl/CameraPhotoPresenter;->cameraManager:Lcom/powervision/camera/camera/CameraManager;

    invoke-virtual {v0, p0}, Lcom/powervision/camera/camera/CameraManager;->removeCameraOnGetPhotoStyleListener(Lcom/powervision/camera/camera/CameraListener$CameraNotifyOnGetPhotoStyleListener;)V

    return-void
.end method

.method public setListener()V
    .locals 1

    .line 46
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/camera/presenter/impl/CameraPhotoPresenter;->cameraManager:Lcom/powervision/camera/camera/CameraManager;

    .line 47
    invoke-virtual {v0, p0}, Lcom/powervision/camera/camera/CameraManager;->addCameraSetCaptureModeListener(Lcom/powervision/camera/camera/CameraListener$CameraSetCaptureModeListener;)V

    .line 48
    iget-object v0, p0, Lcom/powervision/camera/presenter/impl/CameraPhotoPresenter;->cameraManager:Lcom/powervision/camera/camera/CameraManager;

    invoke-virtual {v0, p0}, Lcom/powervision/camera/camera/CameraManager;->addCameraSetWhiteBalanceListener(Lcom/powervision/camera/camera/CameraListener$CameraSetWhiteBalanceListener;)V

    .line 49
    iget-object v0, p0, Lcom/powervision/camera/presenter/impl/CameraPhotoPresenter;->cameraManager:Lcom/powervision/camera/camera/CameraManager;

    invoke-virtual {v0, p0}, Lcom/powervision/camera/camera/CameraManager;->addCameraResolutionChangeListener(Lcom/powervision/camera/camera/CameraListener$CameraResolutionChangeListener;)V

    .line 50
    iget-object v0, p0, Lcom/powervision/camera/presenter/impl/CameraPhotoPresenter;->cameraManager:Lcom/powervision/camera/camera/CameraManager;

    invoke-virtual {v0, p0}, Lcom/powervision/camera/camera/CameraManager;->addCameraNotifySetPhotoFileFormatListener(Lcom/powervision/camera/camera/CameraListener$CameraNotifySetPhotoFileFormatListener;)V

    .line 51
    iget-object v0, p0, Lcom/powervision/camera/presenter/impl/CameraPhotoPresenter;->cameraManager:Lcom/powervision/camera/camera/CameraManager;

    invoke-virtual {v0, p0}, Lcom/powervision/camera/camera/CameraManager;->addCameraSetPhotoStyleListener(Lcom/powervision/camera/camera/CameraListener$CameraSetPhotoStyleListener;)V

    .line 52
    iget-object v0, p0, Lcom/powervision/camera/presenter/impl/CameraPhotoPresenter;->cameraManager:Lcom/powervision/camera/camera/CameraManager;

    invoke-virtual {v0, p0}, Lcom/powervision/camera/camera/CameraManager;->addCameraSetLuminanceListener(Lcom/powervision/camera/camera/CameraListener$CameraSetLuminanceListener;)V

    .line 53
    iget-object v0, p0, Lcom/powervision/camera/presenter/impl/CameraPhotoPresenter;->cameraManager:Lcom/powervision/camera/camera/CameraManager;

    invoke-virtual {v0, p0}, Lcom/powervision/camera/camera/CameraManager;->addCameraSetContrastListener(Lcom/powervision/camera/camera/CameraListener$CameraSetContrastListener;)V

    .line 54
    iget-object v0, p0, Lcom/powervision/camera/presenter/impl/CameraPhotoPresenter;->cameraManager:Lcom/powervision/camera/camera/CameraManager;

    invoke-virtual {v0, p0}, Lcom/powervision/camera/camera/CameraManager;->addCameraSetSaturationListener(Lcom/powervision/camera/camera/CameraListener$CameraSetSaturationListener;)V

    .line 55
    iget-object v0, p0, Lcom/powervision/camera/presenter/impl/CameraPhotoPresenter;->cameraManager:Lcom/powervision/camera/camera/CameraManager;

    invoke-virtual {v0, p0}, Lcom/powervision/camera/camera/CameraManager;->addCameraOnGetPhotoStyleListener(Lcom/powervision/camera/camera/CameraListener$CameraNotifyOnGetPhotoStyleListener;)V

    return-void
.end method

.method public setPhotoFileFormat(Ljava/lang/String;)V
    .locals 7

    const-string v0, "0"

    .line 341
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 344
    :cond_0
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object v1

    const/16 v2, 0xe8

    invoke-virtual {v1, v2}, Lcom/powervision/base/rxbus/RxBus;->post(I)V

    .line 345
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/camera/camera/CameraManager;->getPhotoFormatType()I

    move-result v1

    .line 346
    iget-object v2, p0, Lcom/powervision/camera/presenter/impl/CameraPhotoPresenter;->mData:Ljava/util/List;

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/chad/library/adapter/base/entity/MultiItemEntity;

    .line 347
    instance-of v3, v2, Lcom/powervision/camera/model/bean/CameraPhotoGroup1;

    if-nez v3, :cond_1

    .line 348
    iget-object v2, p0, Lcom/powervision/camera/presenter/impl/CameraPhotoPresenter;->mData:Ljava/util/List;

    const/4 v3, 0x7

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/chad/library/adapter/base/entity/MultiItemEntity;

    .line 350
    :cond_1
    instance-of v3, v2, Lcom/powervision/camera/model/bean/CameraPhotoGroup1;

    if-eqz v3, :cond_4

    .line 351
    check-cast v2, Lcom/powervision/camera/model/bean/CameraPhotoGroup1;

    .line 352
    iget-object v3, p0, Lcom/powervision/camera/presenter/impl/CameraPhotoPresenter;->mMvpModel:Lcom/powervision/base/base/BaseModel;

    check-cast v3, Lcom/powervision/camera/model/impl/CameraPhotoModel;

    invoke-virtual {v3, v1}, Lcom/powervision/camera/model/impl/CameraPhotoModel;->getPhotoFormat(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/powervision/camera/model/bean/CameraPhotoGroup1;->setItemValue(Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 354
    :goto_0
    invoke-virtual {v2}, Lcom/powervision/camera/model/bean/CameraPhotoGroup1;->getSubItems()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 355
    invoke-virtual {v2, v4}, Lcom/powervision/camera/model/bean/CameraPhotoGroup1;->getSubItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/powervision/camera/model/bean/CameraPhotoChild1;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    if-ne v4, v1, :cond_2

    const/4 v6, 0x1

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    :goto_1
    invoke-virtual {v5, v6}, Lcom/powervision/camera/model/bean/CameraPhotoChild1;->setSelect(Z)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 357
    :cond_3
    iget-object p1, p0, Lcom/powervision/camera/presenter/impl/CameraPhotoPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast p1, Lcom/powervision/camera/ui/view/ICameraPhotoView;

    invoke-interface {p1}, Lcom/powervision/camera/ui/view/ICameraPhotoView;->notifyAdapter()V

    :cond_4
    return-void
.end method

.method public updatePhotoIcon(Ljava/lang/String;)V
    .locals 4

    .line 257
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getPhotoGraphType()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 260
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/powervision/camera/camera/CameraManager;->getMultipleShotsNum()I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    .line 262
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/powervision/camera/camera/CameraManager;->getAebValue()I

    move-result v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x4

    if-ne v0, v2, :cond_2

    .line 264
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/powervision/camera/camera/CameraManager;->getTimingTime()I

    move-result v2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    const-string v3, "0"

    .line 267
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 268
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    .line 269
    iget-object v3, p0, Lcom/powervision/camera/presenter/impl/CameraPhotoPresenter;->mMvpModel:Lcom/powervision/base/base/BaseModel;

    check-cast v3, Lcom/powervision/camera/model/impl/CameraPhotoModel;

    invoke-virtual {v3, v0, v2}, Lcom/powervision/camera/model/impl/CameraPhotoModel;->getNeedShowPhotoModeIcon(II)I

    move-result v3

    invoke-virtual {p1, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v1, 0x1

    .line 270
    iget-object v3, p0, Lcom/powervision/camera/presenter/impl/CameraPhotoPresenter;->mMvpModel:Lcom/powervision/base/base/BaseModel;

    check-cast v3, Lcom/powervision/camera/model/impl/CameraPhotoModel;

    invoke-virtual {v3, v0, v2}, Lcom/powervision/camera/model/impl/CameraPhotoModel;->getHandlePhotoModeIcon(II)I

    move-result v0

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 271
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object v0

    const/16 v1, 0xa6

    invoke-virtual {v0, v1, p1}, Lcom/powervision/base/rxbus/RxBus;->post(ILjava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public updatePhotoMode(Ljava/lang/String;)V
    .locals 14

    .line 209
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getPhotoGraphType()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-ne v0, v3, :cond_0

    .line 212
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/powervision/camera/camera/CameraManager;->getMultipleShotsNum()I

    move-result v5

    goto :goto_0

    :cond_0
    if-ne v0, v2, :cond_1

    .line 214
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/powervision/camera/camera/CameraManager;->getAebValue()I

    move-result v5

    goto :goto_0

    :cond_1
    if-ne v0, v1, :cond_2

    .line 216
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/powervision/camera/camera/CameraManager;->getTimingTime()I

    move-result v5

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    .line 218
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "type = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "  updatePhotoMode() ...value="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "n_camera"

    invoke-static {v7, v6}, Lcom/powervision/base/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    iget-object v6, p0, Lcom/powervision/camera/presenter/impl/CameraPhotoPresenter;->mData:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/powervision/camera/model/bean/CameraPhotoGroup4;

    .line 222
    iget-object v7, p0, Lcom/powervision/camera/presenter/impl/CameraPhotoPresenter;->mMvpModel:Lcom/powervision/base/base/BaseModel;

    if-eqz v7, :cond_d

    .line 223
    iget-object v7, p0, Lcom/powervision/camera/presenter/impl/CameraPhotoPresenter;->mMvpModel:Lcom/powervision/base/base/BaseModel;

    check-cast v7, Lcom/powervision/camera/model/impl/CameraPhotoModel;

    invoke-virtual {v7, v0, v5}, Lcom/powervision/camera/model/impl/CameraPhotoModel;->getPhotoModelSelectPic(II)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/powervision/camera/model/bean/CameraPhotoGroup4;->setImageResId(I)V

    const/4 v7, 0x0

    .line 224
    :goto_1
    invoke-virtual {v6}, Lcom/powervision/camera/model/bean/CameraPhotoGroup4;->getSubItems()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_c

    .line 226
    invoke-virtual {v6, v7}, Lcom/powervision/camera/model/bean/CameraPhotoGroup4;->getSubItem(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/powervision/camera/model/bean/CameraPhotoChild4;

    const-string v9, "0"

    const/4 v10, 0x1

    if-ne v7, v0, :cond_3

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    const/4 v11, 0x1

    goto :goto_2

    :cond_3
    const/4 v11, 0x0

    :goto_2
    invoke-virtual {v8, v11}, Lcom/powervision/camera/model/bean/CameraPhotoChild4;->setSelect(Z)V

    if-eq v0, v3, :cond_4

    if-eq v0, v1, :cond_4

    if-ne v0, v2, :cond_b

    .line 230
    :cond_4
    invoke-virtual {v6, v0}, Lcom/powervision/camera/model/bean/CameraPhotoGroup4;->getSubItem(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/powervision/camera/model/bean/CameraPhotoChild4;

    const/4 v11, 0x0

    .line 231
    :goto_3
    invoke-virtual {v8}, Lcom/powervision/camera/model/bean/CameraPhotoChild4;->getSubItems()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_b

    .line 232
    invoke-virtual {v8, v7}, Lcom/powervision/camera/model/bean/CameraPhotoChild4;->getSubItem(I)Ljava/lang/Object;

    move-result-object v12

    instance-of v12, v12, Lcom/powervision/camera/model/bean/CameraPhotoTimedShotChild;

    if-eqz v12, :cond_6

    .line 233
    invoke-virtual {v8, v11}, Lcom/powervision/camera/model/bean/CameraPhotoChild4;->getSubItem(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/powervision/camera/model/bean/CameraPhotoTimedShotChild;

    .line 234
    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    iget-object v13, p0, Lcom/powervision/camera/presenter/impl/CameraPhotoPresenter;->mMvpModel:Lcom/powervision/base/base/BaseModel;

    check-cast v13, Lcom/powervision/camera/model/impl/CameraPhotoModel;

    invoke-virtual {v13, v0, v5}, Lcom/powervision/camera/model/impl/CameraPhotoModel;->getPhotoModeChildSelectIndex(II)I

    move-result v13

    if-ne v11, v13, :cond_5

    const/4 v13, 0x1

    goto :goto_4

    :cond_5
    const/4 v13, 0x0

    :goto_4
    invoke-virtual {v12, v13}, Lcom/powervision/camera/model/bean/CameraPhotoTimedShotChild;->setSelect(Z)V

    goto :goto_7

    .line 235
    :cond_6
    invoke-virtual {v8, v7}, Lcom/powervision/camera/model/bean/CameraPhotoChild4;->getSubItem(I)Ljava/lang/Object;

    move-result-object v12

    instance-of v12, v12, Lcom/powervision/camera/model/bean/CameraPhotoChildChild;

    if-eqz v12, :cond_8

    .line 236
    invoke-virtual {v8, v11}, Lcom/powervision/camera/model/bean/CameraPhotoChild4;->getSubItem(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/powervision/camera/model/bean/CameraPhotoChildChild;

    .line 237
    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    iget-object v13, p0, Lcom/powervision/camera/presenter/impl/CameraPhotoPresenter;->mMvpModel:Lcom/powervision/base/base/BaseModel;

    check-cast v13, Lcom/powervision/camera/model/impl/CameraPhotoModel;

    invoke-virtual {v13, v0, v5}, Lcom/powervision/camera/model/impl/CameraPhotoModel;->getPhotoModeChildSelectIndex(II)I

    move-result v13

    if-ne v11, v13, :cond_7

    const/4 v13, 0x1

    goto :goto_5

    :cond_7
    const/4 v13, 0x0

    :goto_5
    invoke-virtual {v12, v13}, Lcom/powervision/camera/model/bean/CameraPhotoChildChild;->setSelect(Z)V

    goto :goto_7

    .line 238
    :cond_8
    invoke-virtual {v8, v7}, Lcom/powervision/camera/model/bean/CameraPhotoChild4;->getSubItem(I)Ljava/lang/Object;

    move-result-object v12

    instance-of v12, v12, Lcom/powervision/camera/model/bean/CameraPhotoChildAebChild;

    if-eqz v12, :cond_a

    .line 239
    invoke-virtual {v8, v11}, Lcom/powervision/camera/model/bean/CameraPhotoChild4;->getSubItem(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/powervision/camera/model/bean/CameraPhotoChildAebChild;

    .line 240
    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    iget-object v13, p0, Lcom/powervision/camera/presenter/impl/CameraPhotoPresenter;->mMvpModel:Lcom/powervision/base/base/BaseModel;

    check-cast v13, Lcom/powervision/camera/model/impl/CameraPhotoModel;

    invoke-virtual {v13, v0, v5}, Lcom/powervision/camera/model/impl/CameraPhotoModel;->getPhotoModeChildSelectIndex(II)I

    move-result v13

    if-ne v11, v13, :cond_9

    const/4 v13, 0x1

    goto :goto_6

    :cond_9
    const/4 v13, 0x0

    :goto_6
    invoke-virtual {v12, v13}, Lcom/powervision/camera/model/bean/CameraPhotoChildAebChild;->setSelect(Z)V

    :cond_a
    :goto_7
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_b
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 245
    :cond_c
    iget-object v0, p0, Lcom/powervision/camera/presenter/impl/CameraPhotoPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast v0, Lcom/powervision/camera/ui/view/ICameraPhotoView;

    invoke-interface {v0}, Lcom/powervision/camera/ui/view/ICameraPhotoView;->notifyAdapter()V

    .line 246
    invoke-virtual {p0, p1}, Lcom/powervision/camera/presenter/impl/CameraPhotoPresenter;->updatePhotoIcon(Ljava/lang/String;)V

    .line 247
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object p1

    const/16 v0, 0xe9

    invoke-virtual {p1, v0}, Lcom/powervision/base/rxbus/RxBus;->post(I)V

    :cond_d
    return-void
.end method
