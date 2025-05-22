.class public Lcom/lewis/edit/presenter/impl/AVEditPresenter;
.super Lcom/powervision/base/base/BasePresenter;
.source "AVEditPresenter.java"

# interfaces
.implements Lcom/lewis/edit/presenter/IAVEditPresenter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/powervision/base/base/BasePresenter<",
        "Lcom/lewis/edit/ui/view/IAVEditView;",
        "Lcom/lewis/edit/model/impl/AVEditModel;",
        ">;",
        "Lcom/lewis/edit/presenter/IAVEditPresenter;"
    }
.end annotation


# instance fields
.field private mAudioMergePath:Ljava/lang/String;

.field private mCropVideoThumb:Lio/reactivex/disposables/Disposable;

.field private mDelayShowDisposable:Lio/reactivex/disposables/Disposable;

.field private mDeleteFileDisposable:Lio/reactivex/disposables/Disposable;

.field private mDeleteSeparateFileDisposable:Lio/reactivex/disposables/Disposable;

.field private mFinishEditVideoPath:Ljava/lang/String;

.field private mImitateDisposable:Lio/reactivex/disposables/Disposable;

.field private mLogoMergeDisposable:Lio/reactivex/disposables/Disposable;

.field private mVideoEditDisposable:Lio/reactivex/disposables/Disposable;

.field private mVideoFrameDisposable:Lio/reactivex/disposables/Disposable;

.field private mWatermarkDisposable:Lio/reactivex/disposables/Disposable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/powervision/base/base/BasePresenter;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/lewis/edit/presenter/impl/AVEditPresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/lewis/edit/presenter/impl/AVEditPresenter;)Lcom/powervision/base/base/BaseModel;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->mMvpModel:Lcom/powervision/base/base/BaseModel;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/lewis/edit/presenter/impl/AVEditPresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/lewis/edit/presenter/impl/AVEditPresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/lewis/edit/presenter/impl/AVEditPresenter;)Lcom/powervision/base/base/BaseModel;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->mMvpModel:Lcom/powervision/base/base/BaseModel;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/lewis/edit/presenter/impl/AVEditPresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/lewis/edit/presenter/impl/AVEditPresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/lewis/edit/presenter/impl/AVEditPresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/lewis/edit/presenter/impl/AVEditPresenter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->audioVideoMerge(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/lewis/edit/presenter/impl/AVEditPresenter;)Lcom/powervision/base/base/BaseModel;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->mMvpModel:Lcom/powervision/base/base/BaseModel;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/lewis/edit/presenter/impl/AVEditPresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/lewis/edit/presenter/impl/AVEditPresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/lewis/edit/presenter/impl/AVEditPresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/lewis/edit/presenter/impl/AVEditPresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/lewis/edit/presenter/impl/AVEditPresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/lewis/edit/presenter/impl/AVEditPresenter;)Lcom/powervision/base/base/BaseModel;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->mMvpModel:Lcom/powervision/base/base/BaseModel;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/lewis/edit/presenter/impl/AVEditPresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/lewis/edit/presenter/impl/AVEditPresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/lewis/edit/presenter/impl/AVEditPresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/lewis/edit/presenter/impl/AVEditPresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/lewis/edit/presenter/impl/AVEditPresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/lewis/edit/presenter/impl/AVEditPresenter;)Lcom/powervision/base/base/BaseModel;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->mMvpModel:Lcom/powervision/base/base/BaseModel;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/lewis/edit/presenter/impl/AVEditPresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/lewis/edit/presenter/impl/AVEditPresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/lewis/edit/presenter/impl/AVEditPresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$3100(Lcom/lewis/edit/presenter/impl/AVEditPresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$3200(Lcom/lewis/edit/presenter/impl/AVEditPresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$3300(Lcom/lewis/edit/presenter/impl/AVEditPresenter;)Lcom/powervision/base/base/BaseModel;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->mMvpModel:Lcom/powervision/base/base/BaseModel;

    return-object p0
.end method

.method static synthetic access$3400(Lcom/lewis/edit/presenter/impl/AVEditPresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$3500(Lcom/lewis/edit/presenter/impl/AVEditPresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$3600(Lcom/lewis/edit/presenter/impl/AVEditPresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$3700(Lcom/lewis/edit/presenter/impl/AVEditPresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$3800(Lcom/lewis/edit/presenter/impl/AVEditPresenter;)Lcom/powervision/base/base/BaseModel;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->mMvpModel:Lcom/powervision/base/base/BaseModel;

    return-object p0
.end method

.method static synthetic access$3900(Lcom/lewis/edit/presenter/impl/AVEditPresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/lewis/edit/presenter/impl/AVEditPresenter;)Lcom/powervision/base/base/BaseModel;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->mMvpModel:Lcom/powervision/base/base/BaseModel;

    return-object p0
.end method

.method static synthetic access$4000(Lcom/lewis/edit/presenter/impl/AVEditPresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$4100(Lcom/lewis/edit/presenter/impl/AVEditPresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$4200(Lcom/lewis/edit/presenter/impl/AVEditPresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$4300(Lcom/lewis/edit/presenter/impl/AVEditPresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$4400(Lcom/lewis/edit/presenter/impl/AVEditPresenter;)Lio/reactivex/disposables/Disposable;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->mVideoEditDisposable:Lio/reactivex/disposables/Disposable;

    return-object p0
.end method

.method static synthetic access$4500(Lcom/lewis/edit/presenter/impl/AVEditPresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$4600(Lcom/lewis/edit/presenter/impl/AVEditPresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$4700(Lcom/lewis/edit/presenter/impl/AVEditPresenter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->workLogoMerge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4800(Lcom/lewis/edit/presenter/impl/AVEditPresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$4900(Lcom/lewis/edit/presenter/impl/AVEditPresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/lewis/edit/presenter/impl/AVEditPresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$5000(Lcom/lewis/edit/presenter/impl/AVEditPresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$5100(Lcom/lewis/edit/presenter/impl/AVEditPresenter;)Ljava/lang/String;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->mFinishEditVideoPath:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$5200(Lcom/lewis/edit/presenter/impl/AVEditPresenter;)Lcom/powervision/base/base/BaseModel;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->mMvpModel:Lcom/powervision/base/base/BaseModel;

    return-object p0
.end method

.method static synthetic access$5300(Lcom/lewis/edit/presenter/impl/AVEditPresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$5400(Lcom/lewis/edit/presenter/impl/AVEditPresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$5500(Lcom/lewis/edit/presenter/impl/AVEditPresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$5600(Lcom/lewis/edit/presenter/impl/AVEditPresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$5700(Lcom/lewis/edit/presenter/impl/AVEditPresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$5800(Lcom/lewis/edit/presenter/impl/AVEditPresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$5900(Lcom/lewis/edit/presenter/impl/AVEditPresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/lewis/edit/presenter/impl/AVEditPresenter;)Ljava/lang/String;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->mAudioMergePath:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$6000(Lcom/lewis/edit/presenter/impl/AVEditPresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$6100(Lcom/lewis/edit/presenter/impl/AVEditPresenter;)Lcom/powervision/base/base/BaseModel;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->mMvpModel:Lcom/powervision/base/base/BaseModel;

    return-object p0
.end method

.method static synthetic access$6200(Lcom/lewis/edit/presenter/impl/AVEditPresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$6300(Lcom/lewis/edit/presenter/impl/AVEditPresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$6400(Lcom/lewis/edit/presenter/impl/AVEditPresenter;)Lcom/powervision/base/base/BaseModel;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->mMvpModel:Lcom/powervision/base/base/BaseModel;

    return-object p0
.end method

.method static synthetic access$6500(Lcom/lewis/edit/presenter/impl/AVEditPresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$6600(Lcom/lewis/edit/presenter/impl/AVEditPresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$700(Lcom/lewis/edit/presenter/impl/AVEditPresenter;)Lcom/powervision/base/base/BaseModel;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->mMvpModel:Lcom/powervision/base/base/BaseModel;

    return-object p0
.end method

.method static synthetic access$800(Lcom/lewis/edit/presenter/impl/AVEditPresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$900(Lcom/lewis/edit/presenter/impl/AVEditPresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method private audioVideoMerge(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 398
    invoke-static {}, Lcom/lewis/edit/utils/FileUtil;->getMP4OutPath()Ljava/lang/String;

    move-result-object v0

    .line 399
    invoke-static {}, Lcom/powervision/base/utils/MediaInfoUtil;->getInstance()Lcom/powervision/base/utils/MediaInfoUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/base/utils/MediaInfoUtil;->getVideoTime()J

    move-result-wide v1

    long-to-float v1, v1

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    .line 403
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 p1, 0x1

    aput-object p2, v3, p1

    const/4 p1, 0x2

    aput-object v1, v3, p1

    const/4 p1, 0x3

    aput-object v0, v3, p1

    const-string p1, "ffmpeg -y -i %s -i %s -vcodec copy -acodec copy -t %s %s"

    invoke-static {v2, p1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 404
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "edit av-merge f-cmd = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p2, v1}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string p2, " "

    .line 406
    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 407
    invoke-static {}, Lio/microshow/rxffmpeg/RxFFmpegInvoke;->getInstance()Lio/microshow/rxffmpeg/RxFFmpegInvoke;

    move-result-object p2

    invoke-virtual {p2, p1}, Lio/microshow/rxffmpeg/RxFFmpegInvoke;->runCommandRxJava([Ljava/lang/String;)Lio/reactivex/Flowable;

    move-result-object p1

    new-instance p2, Lcom/lewis/edit/presenter/impl/AVEditPresenter$6;

    invoke-direct {p2, p0, v0}, Lcom/lewis/edit/presenter/impl/AVEditPresenter$6;-><init>(Lcom/lewis/edit/presenter/impl/AVEditPresenter;Ljava/lang/String;)V

    .line 409
    invoke-virtual {p1, p2}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/FlowableSubscriber;)V

    return-void
.end method

.method private destroyDisposed(Lio/reactivex/disposables/Disposable;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1054
    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1055
    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->dispose()V

    const/4 p1, 0x0

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "rx video edit had cancel subscribe"

    .line 1059
    invoke-static {v0, p1}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private destroyImitateLoadingProgress()V
    .locals 1

    .line 1045
    iget-object v0, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->mImitateDisposable:Lio/reactivex/disposables/Disposable;

    invoke-direct {p0, v0}, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->destroyDisposed(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method static synthetic lambda$controlWatermarkShow$7(Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-object p0
.end method

.method static synthetic lambda$controlWatermarkShow$9(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "edit control-image-gone error = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$deleteSeparateFileData$13(Lio/reactivex/ObservableEmitter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1558
    invoke-static {}, Lcom/lewis/edit/utils/FileUtil;->getSeparateDirectory()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lewis/edit/utils/FileUtil;->deleteSpecifyFile(Ljava/lang/String;)Z

    move-result v0

    .line 1559
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p0, v0}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    .line 1561
    invoke-interface {p0}, Lio/reactivex/ObservableEmitter;->onComplete()V

    return-void
.end method

.method static synthetic lambda$imitateLoadingProgress$5(Ljava/lang/Long;)Ljava/lang/Integer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1026
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private workLogoMerge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 978
    iget-object v0, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->mMvpModel:Lcom/powervision/base/base/BaseModel;

    check-cast v0, Lcom/lewis/edit/model/impl/AVEditModel;

    invoke-virtual {v0, p1, p2, p3}, Lcom/lewis/edit/model/impl/AVEditModel;->workLogoMerge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    .line 980
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 981
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/lewis/edit/presenter/impl/-$$Lambda$AVEditPresenter$pPMRp4R4INLLnHCKfzQ3ssiEu1Y;

    invoke-direct {p2, p0}, Lcom/lewis/edit/presenter/impl/-$$Lambda$AVEditPresenter$pPMRp4R4INLLnHCKfzQ3ssiEu1Y;-><init>(Lcom/lewis/edit/presenter/impl/AVEditPresenter;)V

    new-instance p3, Lcom/lewis/edit/presenter/impl/-$$Lambda$AVEditPresenter$COG1wz-9nQGjGi0oYYELnFfELUc;

    invoke-direct {p3, p0}, Lcom/lewis/edit/presenter/impl/-$$Lambda$AVEditPresenter$COG1wz-9nQGjGi0oYYELnFfELUc;-><init>(Lcom/lewis/edit/presenter/impl/AVEditPresenter;)V

    .line 982
    invoke-virtual {p1, p2, p3}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->mLogoMergeDisposable:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private workWatermark(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    .locals 7

    .line 884
    invoke-static {}, Lcom/powervision/base/utils/MediaInfoUtil;->getInstance()Lcom/powervision/base/utils/MediaInfoUtil;

    move-result-object v0

    .line 885
    invoke-virtual {v0, p2}, Lcom/powervision/base/utils/MediaInfoUtil;->setVideoPath(Ljava/lang/String;)V

    .line 886
    invoke-virtual {v0}, Lcom/powervision/base/utils/MediaInfoUtil;->getVideoTime()J

    move-result-wide v0

    .line 889
    sget v2, Lcom/lewis/edit/R$id;->show_always:I

    const-wide/16 v3, 0x3e8

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-ne p5, v2, :cond_0

    .line 890
    div-long/2addr v0, v3

    long-to-int p5, v0

    move v1, p5

    const/4 p5, 0x0

    goto :goto_0

    .line 891
    :cond_0
    sget v2, Lcom/lewis/edit/R$id;->show_end:I

    if-ne p5, v2, :cond_1

    .line 892
    div-long/2addr v0, v3

    const-wide/16 v2, 0x2

    sub-long v2, v0, v2

    long-to-int p5, v2

    long-to-int v1, v0

    goto :goto_0

    :cond_1
    const/4 p5, 0x0

    const/4 v1, 0x2

    .line 897
    :goto_0
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, p1

    goto :goto_1

    :cond_2
    const-string v0, ".mp4"

    .line 900
    invoke-static {v0}, Lcom/lewis/edit/utils/FileUtil;->getOutputPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 902
    iget-object v2, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->mMvpModel:Lcom/powervision/base/base/BaseModel;

    check-cast v2, Lcom/lewis/edit/model/impl/AVEditModel;

    invoke-virtual {v2, v0}, Lcom/lewis/edit/model/impl/AVEditModel;->setDeleteResources(Ljava/lang/String;)V

    .line 905
    :goto_1
    iget-object v2, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->mMvpModel:Lcom/powervision/base/base/BaseModel;

    check-cast v2, Lcom/lewis/edit/model/impl/AVEditModel;

    invoke-virtual {v2, p4}, Lcom/lewis/edit/model/impl/AVEditModel;->getTexturePosition(I)Ljava/lang/String;

    move-result-object p4

    .line 909
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p2, v3, v6

    const/4 p2, 0x1

    aput-object p3, v3, p2

    aput-object p4, v3, v5

    const/4 p2, 0x3

    .line 910
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v3, p2

    const/4 p2, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v3, p2

    const/4 p2, 0x5

    aput-object v0, v3, p2

    const-string p2, "ffmpeg -y -i %s -i %s -filter_complex overlay=%s:enable=between(t\\,%d\\,%d) -preset ultrafast %s"

    .line 909
    invoke-static {v2, p2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 911
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "edit watermark f-cmd = "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    new-array p4, v6, [Ljava/lang/Object;

    invoke-static {p3, p4}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string p3, " "

    .line 913
    invoke-virtual {p2, p3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 914
    invoke-static {}, Lio/microshow/rxffmpeg/RxFFmpegInvoke;->getInstance()Lio/microshow/rxffmpeg/RxFFmpegInvoke;

    move-result-object p3

    invoke-virtual {p3, p2}, Lio/microshow/rxffmpeg/RxFFmpegInvoke;->runCommandRxJava([Ljava/lang/String;)Lio/reactivex/Flowable;

    move-result-object p2

    new-instance p3, Lcom/lewis/edit/presenter/impl/AVEditPresenter$13;

    invoke-direct {p3, p0, v0, p6, p1}, Lcom/lewis/edit/presenter/impl/AVEditPresenter$13;-><init>(Lcom/lewis/edit/presenter/impl/AVEditPresenter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 916
    invoke-virtual {p2, p3}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/FlowableSubscriber;)V

    return-void
.end method


# virtual methods
.method public addEditFunctionList()V
    .locals 3

    .line 717
    invoke-virtual {p0}, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->isViewAttached()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 718
    iget-object v0, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast v0, Lcom/lewis/edit/ui/view/IAVEditView;

    iget-object v1, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->mMvpModel:Lcom/powervision/base/base/BaseModel;

    check-cast v1, Lcom/lewis/edit/model/impl/AVEditModel;

    invoke-virtual {v1}, Lcom/lewis/edit/model/impl/AVEditModel;->getEditFunctionList()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/lewis/edit/ui/view/IAVEditView;->addResourceList(Ljava/util/List;I)V

    :cond_0
    return-void
.end method

.method public addKeyFrame(Ljava/lang/String;)V
    .locals 4

    .line 671
    invoke-static {p1}, Lcom/lewis/edit/utils/FileUtil;->getOutPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 675
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object v0, v2, p1

    const-string p1, "ffmpeg -y -i %s -g 25 -preset superfast %s"

    invoke-static {v1, p1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 676
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "edit add-frame f-cmd = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v1, " "

    .line 678
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 679
    invoke-static {}, Lio/microshow/rxffmpeg/RxFFmpegInvoke;->getInstance()Lio/microshow/rxffmpeg/RxFFmpegInvoke;

    move-result-object v1

    invoke-virtual {v1, p1}, Lio/microshow/rxffmpeg/RxFFmpegInvoke;->runCommandRxJava([Ljava/lang/String;)Lio/reactivex/Flowable;

    move-result-object p1

    new-instance v1, Lcom/lewis/edit/presenter/impl/AVEditPresenter$10;

    invoke-direct {v1, p0, v0}, Lcom/lewis/edit/presenter/impl/AVEditPresenter$10;-><init>(Lcom/lewis/edit/presenter/impl/AVEditPresenter;Ljava/lang/String;)V

    .line 681
    invoke-virtual {p1, v1}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/FlowableSubscriber;)V

    return-void
.end method

.method public addMusicList()V
    .locals 3

    .line 612
    invoke-virtual {p0}, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->isViewAttached()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 613
    iget-object v0, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast v0, Lcom/lewis/edit/ui/view/IAVEditView;

    iget-object v1, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->mMvpModel:Lcom/powervision/base/base/BaseModel;

    check-cast v1, Lcom/lewis/edit/model/impl/AVEditModel;

    invoke-virtual {v1}, Lcom/lewis/edit/model/impl/AVEditModel;->getMusicList()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/lewis/edit/ui/view/IAVEditView;->addResourceList(Ljava/util/List;I)V

    :cond_0
    return-void
.end method

.method public addPicList()V
    .locals 3

    .line 622
    invoke-virtual {p0}, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->isViewAttached()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 623
    iget-object v0, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast v0, Lcom/lewis/edit/ui/view/IAVEditView;

    iget-object v1, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->mMvpModel:Lcom/powervision/base/base/BaseModel;

    check-cast v1, Lcom/lewis/edit/model/impl/AVEditModel;

    invoke-virtual {v1}, Lcom/lewis/edit/model/impl/AVEditModel;->getPicList()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2}, Lcom/lewis/edit/ui/view/IAVEditView;->addResourceList(Ljava/util/List;I)V

    :cond_0
    return-void
.end method

.method public addText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 533
    invoke-static {p3}, Lcom/lewis/edit/utils/FileUtil;->createSrtFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 535
    invoke-static {}, Lcom/lewis/edit/utils/FileUtil;->getMP4OutPath()Ljava/lang/String;

    move-result-object p3

    .line 540
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    const/4 p1, 0x2

    aput-object p3, v1, p1

    const-string p1, "ffmpeg -y -i %s -vf subtitles=%s %s"

    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 541
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "edit text f-cmd = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p2, v0}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string p2, " "

    .line 543
    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 544
    invoke-static {}, Lio/microshow/rxffmpeg/RxFFmpegInvoke;->getInstance()Lio/microshow/rxffmpeg/RxFFmpegInvoke;

    move-result-object p2

    invoke-virtual {p2, p1}, Lio/microshow/rxffmpeg/RxFFmpegInvoke;->runCommandRxJava([Ljava/lang/String;)Lio/reactivex/Flowable;

    move-result-object p1

    new-instance p2, Lcom/lewis/edit/presenter/impl/AVEditPresenter$8;

    invoke-direct {p2, p0, p3}, Lcom/lewis/edit/presenter/impl/AVEditPresenter$8;-><init>(Lcom/lewis/edit/presenter/impl/AVEditPresenter;Ljava/lang/String;)V

    .line 546
    invoke-virtual {p1, p2}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/FlowableSubscriber;)V

    return-void
.end method

.method public addTextList()V
    .locals 3

    .line 632
    invoke-virtual {p0}, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->isViewAttached()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 633
    iget-object v0, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast v0, Lcom/lewis/edit/ui/view/IAVEditView;

    iget-object v1, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->mMvpModel:Lcom/powervision/base/base/BaseModel;

    check-cast v1, Lcom/lewis/edit/model/impl/AVEditModel;

    invoke-virtual {v1}, Lcom/lewis/edit/model/impl/AVEditModel;->getTextList()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x3

    invoke-interface {v0, v1, v2}, Lcom/lewis/edit/ui/view/IAVEditView;->addResourceList(Ljava/util/List;I)V

    :cond_0
    return-void
.end method

.method public addTexture(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 10

    .line 458
    invoke-static {}, Lcom/powervision/base/utils/MediaInfoUtil;->getInstance()Lcom/powervision/base/utils/MediaInfoUtil;

    move-result-object v0

    .line 459
    invoke-virtual {v0, p1}, Lcom/powervision/base/utils/MediaInfoUtil;->setVideoPath(Ljava/lang/String;)V

    .line 461
    iget-object v1, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->mMvpModel:Lcom/powervision/base/base/BaseModel;

    check-cast v1, Lcom/lewis/edit/model/impl/AVEditModel;

    invoke-virtual {v1, p4}, Lcom/lewis/edit/model/impl/AVEditModel;->getTexturePosition(I)Ljava/lang/String;

    move-result-object p4

    .line 464
    sget v1, Lcom/lewis/edit/R$id;->show_always:I

    const/4 v2, 0x2

    const-wide/16 v3, 0x3e8

    const/4 v5, 0x0

    if-ne p3, v1, :cond_0

    .line 465
    invoke-virtual {v0}, Lcom/powervision/base/utils/MediaInfoUtil;->getVideoTime()J

    move-result-wide v0

    div-long/2addr v0, v3

    long-to-int p3, v0

    move v1, p3

    const/4 p3, 0x0

    goto :goto_0

    .line 466
    :cond_0
    sget v1, Lcom/lewis/edit/R$id;->show_end:I

    if-ne p3, v1, :cond_1

    .line 467
    invoke-virtual {v0}, Lcom/powervision/base/utils/MediaInfoUtil;->getVideoTime()J

    move-result-wide v6

    div-long/2addr v6, v3

    const-wide/16 v8, 0x2

    sub-long/2addr v6, v8

    long-to-int p3, v6

    .line 468
    invoke-virtual {v0}, Lcom/powervision/base/utils/MediaInfoUtil;->getVideoTime()J

    move-result-wide v0

    div-long/2addr v0, v3

    long-to-int v1, v0

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    const/4 v1, 0x2

    .line 472
    :goto_0
    invoke-static {}, Lcom/lewis/edit/utils/FileUtil;->getWorkOutPath()Ljava/lang/String;

    move-result-object v0

    .line 476
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v5

    const/4 p1, 0x1

    aput-object p2, v4, p1

    aput-object p4, v4, v2

    const/4 p1, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v4, p1

    const/4 p1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v4, p1

    const/4 p1, 0x5

    aput-object v0, v4, p1

    const-string p1, "ffmpeg -y -i %s -i %s -filter_complex overlay=%s:enable=between(t\\,%d\\,%d) -preset ultrafast %s"

    invoke-static {v3, p1, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 477
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "edit watermark f-cmd = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array p3, v5, [Ljava/lang/Object;

    invoke-static {p2, p3}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string p2, " "

    .line 479
    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 480
    invoke-static {}, Lio/microshow/rxffmpeg/RxFFmpegInvoke;->getInstance()Lio/microshow/rxffmpeg/RxFFmpegInvoke;

    move-result-object p2

    invoke-virtual {p2, p1}, Lio/microshow/rxffmpeg/RxFFmpegInvoke;->runCommandRxJava([Ljava/lang/String;)Lio/reactivex/Flowable;

    move-result-object p1

    new-instance p2, Lcom/lewis/edit/presenter/impl/AVEditPresenter$7;

    invoke-direct {p2, p0, v0}, Lcom/lewis/edit/presenter/impl/AVEditPresenter$7;-><init>(Lcom/lewis/edit/presenter/impl/AVEditPresenter;Ljava/lang/String;)V

    .line 482
    invoke-virtual {p1, p2}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/FlowableSubscriber;)V

    return-void
.end method

.method public audioConcat(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 190
    invoke-static {}, Lcom/powervision/base/utils/MediaInfoUtil;->getInstance()Lcom/powervision/base/utils/MediaInfoUtil;

    move-result-object v0

    .line 191
    invoke-virtual {v0, p2}, Lcom/powervision/base/utils/MediaInfoUtil;->setAudioPath(Ljava/lang/String;)V

    .line 192
    invoke-virtual {v0, p1}, Lcom/powervision/base/utils/MediaInfoUtil;->setVideoPath(Ljava/lang/String;)V

    .line 193
    invoke-virtual {v0}, Lcom/powervision/base/utils/MediaInfoUtil;->getAudioTime()J

    move-result-wide v1

    .line 194
    invoke-virtual {v0}, Lcom/powervision/base/utils/MediaInfoUtil;->getVideoTime()J

    move-result-wide v3

    cmp-long v0, v1, v3

    if-gez v0, :cond_0

    .line 197
    div-long/2addr v3, v1

    const-wide/16 v0, 0x1

    add-long/2addr v3, v0

    long-to-int v0, v3

    .line 199
    invoke-static {p2, v0}, Lcom/lewis/edit/utils/FileUtil;->getConcatFile(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 201
    invoke-static {p2}, Lcom/lewis/edit/utils/FileUtil;->getOutPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->mAudioMergePath:Ljava/lang/String;

    .line 202
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "edit a\u2014merge audio-times = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " concatFile-length = "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " audio-suffix = "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/lewis/edit/utils/FileUtil;->getSuffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    new-array v2, v0, [Ljava/lang/Object;

    .line 202
    invoke-static {p2, v2}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 207
    sget-object p2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v0

    const/4 v1, 0x1

    iget-object v3, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->mAudioMergePath:Ljava/lang/String;

    aput-object v3, v2, v1

    const-string v1, "ffmpeg -y -f concat -safe 0 -i %s -c copy %s"

    invoke-static {p2, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 208
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "edit a\u2014merge f-cmd = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, " "

    .line 210
    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 211
    invoke-static {}, Lio/microshow/rxffmpeg/RxFFmpegInvoke;->getInstance()Lio/microshow/rxffmpeg/RxFFmpegInvoke;

    move-result-object v0

    invoke-virtual {v0, p2}, Lio/microshow/rxffmpeg/RxFFmpegInvoke;->runCommandRxJava([Ljava/lang/String;)Lio/reactivex/Flowable;

    move-result-object p2

    new-instance v0, Lcom/lewis/edit/presenter/impl/AVEditPresenter$3;

    invoke-direct {v0, p0, p1}, Lcom/lewis/edit/presenter/impl/AVEditPresenter$3;-><init>(Lcom/lewis/edit/presenter/impl/AVEditPresenter;Ljava/lang/String;)V

    .line 213
    invoke-virtual {p2, v0}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/FlowableSubscriber;)V

    goto :goto_0

    .line 256
    :cond_0
    iput-object p2, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->mAudioMergePath:Ljava/lang/String;

    .line 258
    invoke-virtual {p0, p1}, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->getVideoTrack(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public avMerge(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 179
    invoke-virtual {p0, p1, p2}, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->audioConcat(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public avMergeNoMusic(Ljava/lang/String;)V
    .locals 4

    .line 1392
    invoke-static {}, Lcom/lewis/edit/utils/FileUtil;->getMP4OutPath()Ljava/lang/String;

    move-result-object v0

    .line 1396
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object v0, v2, p1

    const-string p1, "ffmpeg -y -i %s -vcodec copy -an %s"

    invoke-static {v1, p1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 1397
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "edit a-remove f-cmd = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v1, " "

    .line 1399
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 1400
    invoke-static {}, Lio/microshow/rxffmpeg/RxFFmpegInvoke;->getInstance()Lio/microshow/rxffmpeg/RxFFmpegInvoke;

    move-result-object v1

    invoke-virtual {v1, p1}, Lio/microshow/rxffmpeg/RxFFmpegInvoke;->runCommandRxJava([Ljava/lang/String;)Lio/reactivex/Flowable;

    move-result-object p1

    new-instance v1, Lcom/lewis/edit/presenter/impl/AVEditPresenter$19;

    invoke-direct {v1, p0, v0}, Lcom/lewis/edit/presenter/impl/AVEditPresenter$19;-><init>(Lcom/lewis/edit/presenter/impl/AVEditPresenter;Ljava/lang/String;)V

    .line 1402
    invoke-virtual {p1, v1}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/FlowableSubscriber;)V

    return-void
.end method

.method public cancelCropVideoThumb()V
    .locals 1

    .line 604
    iget-object v0, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->mCropVideoThumb:Lio/reactivex/disposables/Disposable;

    invoke-direct {p0, v0}, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->destroyDisposed(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method public cancelVideoEdit()V
    .locals 2

    .line 1008
    iget-object v0, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->mVideoEditDisposable:Lio/reactivex/disposables/Disposable;

    invoke-direct {p0, v0}, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->destroyDisposed(Lio/reactivex/disposables/Disposable;)V

    .line 1010
    invoke-static {}, Lio/microshow/rxffmpeg/RxFFmpegInvoke;->getInstance()Lio/microshow/rxffmpeg/RxFFmpegInvoke;

    move-result-object v0

    invoke-virtual {v0}, Lio/microshow/rxffmpeg/RxFFmpegInvoke;->exit()V

    .line 1012
    iget-object v0, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->mFinishEditVideoPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1013
    iget-object v0, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->mMvpModel:Lcom/powervision/base/base/BaseModel;

    check-cast v0, Lcom/lewis/edit/model/impl/AVEditModel;

    iget-object v1, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->mFinishEditVideoPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/lewis/edit/model/impl/AVEditModel;->setDeleteResources(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public cancelVideoThumbBySecond()V
    .locals 1

    .line 1349
    iget-object v0, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->mVideoFrameDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1350
    iget-object v0, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->mVideoFrameDisposable:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    const/4 v0, 0x0

    .line 1351
    iput-object v0, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->mVideoFrameDisposable:Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method public controlWatermarkShow(III)V
    .locals 5

    .line 1196
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x1

    invoke-static {v1, v2, v3, v4, v0}, Lio/reactivex/Observable;->interval(JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v0

    int-to-long v1, p1

    .line 1197
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->take(J)Lio/reactivex/Observable;

    move-result-object v0

    sget-object v1, Lcom/lewis/edit/presenter/impl/-$$Lambda$AVEditPresenter$14KbLVU8sF5lfT_d2_Iq9VejIog;->INSTANCE:Lcom/lewis/edit/presenter/impl/-$$Lambda$AVEditPresenter$14KbLVU8sF5lfT_d2_Iq9VejIog;

    .line 1198
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    .line 1200
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 1201
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/lewis/edit/presenter/impl/-$$Lambda$AVEditPresenter$tufudlibSkVp3ne291SgncFrA48;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/lewis/edit/presenter/impl/-$$Lambda$AVEditPresenter$tufudlibSkVp3ne291SgncFrA48;-><init>(Lcom/lewis/edit/presenter/impl/AVEditPresenter;III)V

    sget-object p1, Lcom/lewis/edit/presenter/impl/-$$Lambda$AVEditPresenter$-v1Jgga4IbBfqw6t18mFgl0L1Qs;->INSTANCE:Lcom/lewis/edit/presenter/impl/-$$Lambda$AVEditPresenter$-v1Jgga4IbBfqw6t18mFgl0L1Qs;

    new-instance p2, Lcom/lewis/edit/presenter/impl/-$$Lambda$AVEditPresenter$R-aWCweiICfS4WYDH1FEsI2zje0;

    invoke-direct {p2, p0}, Lcom/lewis/edit/presenter/impl/-$$Lambda$AVEditPresenter$R-aWCweiICfS4WYDH1FEsI2zje0;-><init>(Lcom/lewis/edit/presenter/impl/AVEditPresenter;)V

    .line 1202
    invoke-virtual {v0, v1, p1, p2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Action;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->mWatermarkDisposable:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public delayShowSeparate(Ljava/lang/String;I)V
    .locals 2

    int-to-long v0, p2

    .line 1361
    sget-object p2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v1, p2}, Lio/reactivex/Observable;->timer(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object p2

    .line 1363
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p2, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p2

    new-instance v0, Lcom/lewis/edit/presenter/impl/-$$Lambda$AVEditPresenter$31wpfdlMAaVdcGAtFCu3G5UR6O0;

    invoke-direct {v0, p0, p1}, Lcom/lewis/edit/presenter/impl/-$$Lambda$AVEditPresenter$31wpfdlMAaVdcGAtFCu3G5UR6O0;-><init>(Lcom/lewis/edit/presenter/impl/AVEditPresenter;Ljava/lang/String;)V

    .line 1364
    invoke-virtual {p2, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->mDelayShowDisposable:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public deleteEditFileData()V
    .locals 2

    .line 1577
    new-instance v0, Lcom/lewis/edit/presenter/impl/-$$Lambda$AVEditPresenter$dg-xckM21LeeEpSjrtvsDdGsgNY;

    invoke-direct {v0, p0}, Lcom/lewis/edit/presenter/impl/-$$Lambda$AVEditPresenter$dg-xckM21LeeEpSjrtvsDdGsgNY;-><init>(Lcom/lewis/edit/presenter/impl/AVEditPresenter;)V

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object v0

    .line 1584
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 1585
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/lewis/edit/presenter/impl/-$$Lambda$AVEditPresenter$qpO8mH8BdZRH8sakFMgf4uzJIJ4;

    invoke-direct {v1, p0}, Lcom/lewis/edit/presenter/impl/-$$Lambda$AVEditPresenter$qpO8mH8BdZRH8sakFMgf4uzJIJ4;-><init>(Lcom/lewis/edit/presenter/impl/AVEditPresenter;)V

    .line 1586
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->mDeleteFileDisposable:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public deleteSeparateFileData()V
    .locals 2

    .line 1557
    sget-object v0, Lcom/lewis/edit/presenter/impl/-$$Lambda$AVEditPresenter$B83bq6JDYkHvOy5A0XxoYA63_Vw;->INSTANCE:Lcom/lewis/edit/presenter/impl/-$$Lambda$AVEditPresenter$B83bq6JDYkHvOy5A0XxoYA63_Vw;

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object v0

    .line 1562
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 1563
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/lewis/edit/presenter/impl/-$$Lambda$AVEditPresenter$26nsEQHVtfAuJbLoFSHv-q38NTg;

    invoke-direct {v1, p0}, Lcom/lewis/edit/presenter/impl/-$$Lambda$AVEditPresenter$26nsEQHVtfAuJbLoFSHv-q38NTg;-><init>(Lcom/lewis/edit/presenter/impl/AVEditPresenter;)V

    .line 1564
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->mDeleteSeparateFileDisposable:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public getCropVideoThumb(Ljava/lang/String;)V
    .locals 1

    .line 588
    iget-object v0, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->mMvpModel:Lcom/powervision/base/base/BaseModel;

    check-cast v0, Lcom/lewis/edit/model/impl/AVEditModel;

    invoke-virtual {v0, p1}, Lcom/lewis/edit/model/impl/AVEditModel;->getCropVideoThumb(Ljava/lang/String;)Lio/reactivex/ObservableOnSubscribe;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object p1

    .line 590
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 591
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/lewis/edit/presenter/impl/-$$Lambda$AVEditPresenter$dXGS5xZgf2t08T39G84g-XonAwg;

    invoke-direct {v0, p0}, Lcom/lewis/edit/presenter/impl/-$$Lambda$AVEditPresenter$dXGS5xZgf2t08T39G84g-XonAwg;-><init>(Lcom/lewis/edit/presenter/impl/AVEditPresenter;)V

    .line 592
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->mCropVideoThumb:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public getMusicName(I)Ljava/lang/String;
    .locals 1

    .line 1382
    iget-object v0, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->mMvpModel:Lcom/powervision/base/base/BaseModel;

    check-cast v0, Lcom/lewis/edit/model/impl/AVEditModel;

    invoke-virtual {v0}, Lcom/lewis/edit/model/impl/AVEditModel;->getMusicNames()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getPicName(I)Ljava/lang/String;
    .locals 1

    .line 1522
    iget-object v0, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->mMvpModel:Lcom/powervision/base/base/BaseModel;

    check-cast v0, Lcom/lewis/edit/model/impl/AVEditModel;

    invoke-virtual {v0}, Lcom/lewis/edit/model/impl/AVEditModel;->getPicNames()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getPicPath(I)V
    .locals 2

    .line 639
    iget-object v0, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->mMvpModel:Lcom/powervision/base/base/BaseModel;

    check-cast v0, Lcom/lewis/edit/model/impl/AVEditModel;

    iget-object v1, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->mMvpModel:Lcom/powervision/base/base/BaseModel;

    check-cast v1, Lcom/lewis/edit/model/impl/AVEditModel;

    invoke-virtual {v1}, Lcom/lewis/edit/model/impl/AVEditModel;->getPicNames()Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/lewis/edit/model/impl/AVEditModel;->getResourcePath(Landroid/util/SparseArray;I)Lio/reactivex/ObservableOnSubscribe;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object p1

    .line 641
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 642
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/lewis/edit/presenter/impl/AVEditPresenter$9;

    invoke-direct {v0, p0}, Lcom/lewis/edit/presenter/impl/AVEditPresenter$9;-><init>(Lcom/lewis/edit/presenter/impl/AVEditPresenter;)V

    .line 643
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public getRotationVideo(Ljava/lang/String;)V
    .locals 1

    .line 1324
    iget-object v0, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->mMvpModel:Lcom/powervision/base/base/BaseModel;

    check-cast v0, Lcom/lewis/edit/model/impl/AVEditModel;

    invoke-virtual {v0, p1}, Lcom/lewis/edit/model/impl/AVEditModel;->getRotationVideo(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    .line 1325
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 1326
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/lewis/edit/presenter/impl/AVEditPresenter$18;

    invoke-direct {v0, p0}, Lcom/lewis/edit/presenter/impl/AVEditPresenter$18;-><init>(Lcom/lewis/edit/presenter/impl/AVEditPresenter;)V

    .line 1327
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public getVideoAllTime(Ljava/util/List;IIZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;IIZ)V"
        }
    .end annotation

    .line 732
    iget-object v0, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->mMvpModel:Lcom/powervision/base/base/BaseModel;

    check-cast v0, Lcom/lewis/edit/model/impl/AVEditModel;

    invoke-virtual {v0, p1, p2, p3}, Lcom/lewis/edit/model/impl/AVEditModel;->getVideoAllTime(Ljava/util/List;II)Lio/reactivex/FlowableOnSubscribe;

    move-result-object p1

    sget-object p2, Lio/reactivex/BackpressureStrategy;->BUFFER:Lio/reactivex/BackpressureStrategy;

    invoke-static {p1, p2}, Lio/reactivex/Flowable;->create(Lio/reactivex/FlowableOnSubscribe;Lio/reactivex/BackpressureStrategy;)Lio/reactivex/Flowable;

    move-result-object p1

    .line 735
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Flowable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object p1

    .line 736
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object p1

    new-instance p2, Lcom/lewis/edit/presenter/impl/AVEditPresenter$11;

    invoke-direct {p2, p0, p4}, Lcom/lewis/edit/presenter/impl/AVEditPresenter$11;-><init>(Lcom/lewis/edit/presenter/impl/AVEditPresenter;Z)V

    .line 737
    invoke-virtual {p1, p2}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/FlowableSubscriber;)V

    return-void
.end method

.method public getVideoThumbBySecond(Ljava/lang/String;)V
    .locals 1

    .line 1239
    iget-object v0, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->mMvpModel:Lcom/powervision/base/base/BaseModel;

    check-cast v0, Lcom/lewis/edit/model/impl/AVEditModel;

    invoke-virtual {v0, p1}, Lcom/lewis/edit/model/impl/AVEditModel;->getVideoThumbBySecond(Ljava/lang/String;)Lio/reactivex/Flowable;

    move-result-object p1

    .line 1241
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Flowable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object p1

    .line 1242
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object p1

    new-instance v0, Lcom/lewis/edit/presenter/impl/-$$Lambda$AVEditPresenter$C06l0d8b0Df2VlTbknNvWKJWBYU;

    invoke-direct {v0, p0}, Lcom/lewis/edit/presenter/impl/-$$Lambda$AVEditPresenter$C06l0d8b0Df2VlTbknNvWKJWBYU;-><init>(Lcom/lewis/edit/presenter/impl/AVEditPresenter;)V

    .line 1243
    invoke-virtual {p1, v0}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->mVideoFrameDisposable:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public getVideoTrack(Ljava/lang/String;)V
    .locals 4

    .line 333
    invoke-static {}, Lcom/powervision/base/utils/MediaInfoUtil;->getInstance()Lcom/powervision/base/utils/MediaInfoUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/powervision/base/utils/MediaInfoUtil;->isHaveAudio(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 335
    invoke-static {}, Lcom/lewis/edit/utils/FileUtil;->getMP4OutPath()Ljava/lang/String;

    move-result-object v0

    .line 339
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object v0, v2, p1

    const-string p1, "ffmpeg -y -i %s -vcodec copy -an %s"

    invoke-static {v1, p1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 340
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "edit a-remove f-cmd = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v1, " "

    .line 342
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 343
    invoke-static {}, Lio/microshow/rxffmpeg/RxFFmpegInvoke;->getInstance()Lio/microshow/rxffmpeg/RxFFmpegInvoke;

    move-result-object v1

    invoke-virtual {v1, p1}, Lio/microshow/rxffmpeg/RxFFmpegInvoke;->runCommandRxJava([Ljava/lang/String;)Lio/reactivex/Flowable;

    move-result-object p1

    new-instance v1, Lcom/lewis/edit/presenter/impl/AVEditPresenter$5;

    invoke-direct {v1, p0, v0}, Lcom/lewis/edit/presenter/impl/AVEditPresenter$5;-><init>(Lcom/lewis/edit/presenter/impl/AVEditPresenter;Ljava/lang/String;)V

    .line 345
    invoke-virtual {p1, v1}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/FlowableSubscriber;)V

    goto :goto_0

    .line 386
    :cond_0
    iget-object v0, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->mAudioMergePath:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->audioVideoMerge(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public imitateLoadingProgress(I)V
    .locals 4

    mul-int/lit8 p1, p1, 0xa

    int-to-long v0, p1

    .line 1025
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v0, v1, p1}, Lio/reactivex/Observable;->interval(JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object p1

    sget-object v0, Lcom/lewis/edit/presenter/impl/-$$Lambda$AVEditPresenter$GdfTx117BGc99DdFv5qH5s-vfEs;->INSTANCE:Lcom/lewis/edit/presenter/impl/-$$Lambda$AVEditPresenter$GdfTx117BGc99DdFv5qH5s-vfEs;

    .line 1026
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    .line 1028
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 1029
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/lewis/edit/presenter/impl/-$$Lambda$AVEditPresenter$jPCQ2A_FX0xyD_27D_xEimxBbn4;

    invoke-direct {v0, p0}, Lcom/lewis/edit/presenter/impl/-$$Lambda$AVEditPresenter$jPCQ2A_FX0xyD_27D_xEimxBbn4;-><init>(Lcom/lewis/edit/presenter/impl/AVEditPresenter;)V

    .line 1030
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->mImitateDisposable:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public synthetic lambda$controlWatermarkShow$10$AVEditPresenter()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "edit control-image-gone complete"

    .line 1215
    invoke-static {v1, v0}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1216
    invoke-virtual {p0}, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->isViewAttached()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1217
    iget-object v0, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast v0, Lcom/lewis/edit/ui/view/IAVEditView;

    invoke-interface {v0}, Lcom/lewis/edit/ui/view/IAVEditView;->hideWatermark()V

    :cond_0
    return-void
.end method

.method public synthetic lambda$controlWatermarkShow$8$AVEditPresenter(IIILjava/lang/Long;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "edit control-image-gone count = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " time = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " startTime = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1205
    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    int-to-long p1, p2

    cmp-long v2, v0, p1

    if-nez v2, :cond_0

    .line 1206
    invoke-virtual {p0}, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->isViewAttached()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1207
    iget-object p1, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast p1, Lcom/lewis/edit/ui/view/IAVEditView;

    invoke-interface {p1}, Lcom/lewis/edit/ui/view/IAVEditView;->showWatermark()V

    goto :goto_0

    .line 1209
    :cond_0
    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    int-to-long p3, p3

    cmp-long v0, p1, p3

    if-nez v0, :cond_1

    .line 1210
    invoke-virtual {p0}, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->isViewAttached()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1211
    iget-object p1, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast p1, Lcom/lewis/edit/ui/view/IAVEditView;

    invoke-interface {p1}, Lcom/lewis/edit/ui/view/IAVEditView;->hideWatermark()V

    :cond_1
    :goto_0
    return-void
.end method

.method public synthetic lambda$delayShowSeparate$12$AVEditPresenter(Ljava/lang/String;Ljava/lang/Long;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1365
    invoke-virtual {p0}, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->isViewAttached()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1366
    iget-object p2, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast p2, Lcom/lewis/edit/ui/view/IAVEditView;

    invoke-interface {p2, p1}, Lcom/lewis/edit/ui/view/IAVEditView;->showVideoSeparate(Ljava/lang/String;)V

    .line 1368
    :cond_0
    iget-object p1, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->mDelayShowDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result p1

    if-nez p1, :cond_1

    .line 1369
    iget-object p1, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->mDelayShowDisposable:Lio/reactivex/disposables/Disposable;

    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->dispose()V

    const/4 p1, 0x0

    .line 1370
    iput-object p1, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->mDelayShowDisposable:Lio/reactivex/disposables/Disposable;

    :cond_1
    return-void
.end method

.method public synthetic lambda$deleteEditFileData$15$AVEditPresenter(Lio/reactivex/ObservableEmitter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1578
    iget-object v0, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->mMvpModel:Lcom/powervision/base/base/BaseModel;

    if-eqz v0, :cond_0

    .line 1579
    iget-object v0, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->mMvpModel:Lcom/powervision/base/base/BaseModel;

    check-cast v0, Lcom/lewis/edit/model/impl/AVEditModel;

    invoke-virtual {v0}, Lcom/lewis/edit/model/impl/AVEditModel;->deleteFile()V

    :cond_0
    const-string v0, "success"

    .line 1581
    invoke-interface {p1, v0}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    .line 1583
    invoke-interface {p1}, Lio/reactivex/ObservableEmitter;->onComplete()V

    return-void
.end method

.method public synthetic lambda$deleteEditFileData$16$AVEditPresenter(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1587
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "delete data "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1588
    iget-object p1, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->mDeleteFileDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result p1

    if-nez p1, :cond_0

    .line 1589
    iget-object p1, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->mDeleteFileDisposable:Lio/reactivex/disposables/Disposable;

    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->dispose()V

    const/4 p1, 0x0

    .line 1590
    iput-object p1, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->mDeleteFileDisposable:Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method public synthetic lambda$deleteSeparateFileData$14$AVEditPresenter(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1565
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "delete-separate-data = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1566
    iget-object p1, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->mDeleteSeparateFileDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result p1

    if-nez p1, :cond_0

    .line 1567
    iget-object p1, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->mDeleteSeparateFileDisposable:Lio/reactivex/disposables/Disposable;

    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->dispose()V

    const/4 p1, 0x0

    .line 1568
    iput-object p1, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->mDeleteSeparateFileDisposable:Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method public synthetic lambda$getCropVideoThumb$0$AVEditPresenter(Lcom/lewis/edit/model/entries/VideoThumb;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 594
    invoke-virtual {p0}, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->isViewAttached()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 595
    iget-object v0, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast v0, Lcom/lewis/edit/ui/view/IAVEditView;

    invoke-interface {v0, p1}, Lcom/lewis/edit/ui/view/IAVEditView;->notifyAdapter(Lcom/lewis/edit/model/entries/VideoThumb;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$getVideoThumbBySecond$11$AVEditPresenter(Lcom/lewis/edit/model/entries/VideoSeparateBean;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1244
    invoke-virtual {p0}, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->isViewAttached()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1245
    iget-object v0, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast v0, Lcom/lewis/edit/ui/view/IAVEditView;

    invoke-interface {v0, p1}, Lcom/lewis/edit/ui/view/IAVEditView;->updateVideoSeparateData(Lcom/lewis/edit/model/entries/VideoSeparateBean;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$imitateLoadingProgress$6$AVEditPresenter(Ljava/lang/Integer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1031
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x63

    if-gt v0, v1, :cond_0

    .line 1032
    invoke-virtual {p0}, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->isViewAttached()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1033
    iget-object v0, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast v0, Lcom/lewis/edit/ui/view/IAVEditView;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/lewis/edit/ui/view/IAVEditView;->editProgress(I)V

    goto :goto_0

    .line 1036
    :cond_0
    invoke-direct {p0}, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->destroyImitateLoadingProgress()V

    :cond_1
    :goto_0
    return-void
.end method

.method public synthetic lambda$workAllVideoEdit$1$AVEditPresenter([Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 841
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "edit-finish = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " data = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    aget-object v3, p1, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 842
    invoke-virtual {p0}, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->isViewAttached()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 843
    aget-object v0, p1, v1

    const-string v3, "0"

    .line 844
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/16 v4, 0x64

    if-eqz v3, :cond_0

    .line 846
    aget-object p1, p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-gt p1, v4, :cond_1

    .line 848
    iget-object v0, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast v0, Lcom/lewis/edit/ui/view/IAVEditView;

    invoke-interface {v0, p1}, Lcom/lewis/edit/ui/view/IAVEditView;->editProgress(I)V

    goto :goto_0

    :cond_0
    const-string v3, "1"

    .line 850
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 851
    aget-object p1, p1, v2

    .line 852
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "edit work success = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 854
    iget-object v0, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast v0, Lcom/lewis/edit/ui/view/IAVEditView;

    invoke-interface {v0, v4}, Lcom/lewis/edit/ui/view/IAVEditView;->editProgress(I)V

    .line 856
    iget-object v0, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast v0, Lcom/lewis/edit/ui/view/IAVEditView;

    invoke-interface {v0, p1}, Lcom/lewis/edit/ui/view/IAVEditView;->editSuccess(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public synthetic lambda$workAllVideoEdit$2$AVEditPresenter(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 860
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "edit work error = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 861
    invoke-virtual {p0}, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->isViewAttached()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 862
    iget-object v0, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast v0, Lcom/lewis/edit/ui/view/IAVEditView;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/lewis/edit/ui/view/IAVEditView;->editFailure(Ljava/lang/String;)V

    .line 864
    iget-object p1, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->mFinishEditVideoPath:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 865
    iget-object p1, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->mMvpModel:Lcom/powervision/base/base/BaseModel;

    check-cast p1, Lcom/lewis/edit/model/impl/AVEditModel;

    iget-object v0, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->mFinishEditVideoPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/lewis/edit/model/impl/AVEditModel;->setDeleteResources(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$workLogoMerge$3$AVEditPresenter(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 983
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "edit logo-merge success = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 984
    invoke-virtual {p0}, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->isViewAttached()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 986
    iget-object v0, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast v0, Lcom/lewis/edit/ui/view/IAVEditView;

    const/16 v1, 0x63

    invoke-interface {v0, v1}, Lcom/lewis/edit/ui/view/IAVEditView;->editProgress(I)V

    .line 988
    iget-object v0, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast v0, Lcom/lewis/edit/ui/view/IAVEditView;

    invoke-interface {v0, p1}, Lcom/lewis/edit/ui/view/IAVEditView;->editSuccess(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$workLogoMerge$4$AVEditPresenter(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 991
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "edit logo-merge error = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 992
    invoke-virtual {p0}, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->isViewAttached()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 993
    iget-object v0, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast v0, Lcom/lewis/edit/ui/view/IAVEditView;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/lewis/edit/ui/view/IAVEditView;->editFailure(Ljava/lang/String;)V

    .line 995
    iget-object p1, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->mFinishEditVideoPath:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 996
    iget-object p1, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->mMvpModel:Lcom/powervision/base/base/BaseModel;

    check-cast p1, Lcom/lewis/edit/model/impl/AVEditModel;

    iget-object v0, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->mFinishEditVideoPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/lewis/edit/model/impl/AVEditModel;->setDeleteResources(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public playFromEnd(Ljava/lang/String;)V
    .locals 1

    .line 1293
    iget-object v0, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->mMvpModel:Lcom/powervision/base/base/BaseModel;

    check-cast v0, Lcom/lewis/edit/model/impl/AVEditModel;

    invoke-virtual {v0, p1}, Lcom/lewis/edit/model/impl/AVEditModel;->getPlayFromEndVideo(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    .line 1295
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 1296
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/lewis/edit/presenter/impl/AVEditPresenter$17;

    invoke-direct {v0, p0}, Lcom/lewis/edit/presenter/impl/AVEditPresenter$17;-><init>(Lcom/lewis/edit/presenter/impl/AVEditPresenter;)V

    .line 1297
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public saveDataFileToDb(Ljava/lang/String;)V
    .locals 1

    .line 1531
    iget-object v0, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->mMvpModel:Lcom/powervision/base/base/BaseModel;

    check-cast v0, Lcom/lewis/edit/model/impl/AVEditModel;

    invoke-virtual {v0, p1}, Lcom/lewis/edit/model/impl/AVEditModel;->getWorkPicFilePath(Ljava/lang/String;)Lio/reactivex/FlowableOnSubscribe;

    move-result-object p1

    sget-object v0, Lio/reactivex/BackpressureStrategy;->BUFFER:Lio/reactivex/BackpressureStrategy;

    invoke-static {p1, v0}, Lio/reactivex/Flowable;->create(Lio/reactivex/FlowableOnSubscribe;Lio/reactivex/BackpressureStrategy;)Lio/reactivex/Flowable;

    move-result-object p1

    .line 1533
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Flowable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object p1

    .line 1534
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object p1

    new-instance v0, Lcom/lewis/edit/presenter/impl/AVEditPresenter$22;

    invoke-direct {v0, p0}, Lcom/lewis/edit/presenter/impl/AVEditPresenter$22;-><init>(Lcom/lewis/edit/presenter/impl/AVEditPresenter;)V

    .line 1535
    invoke-virtual {p1, v0}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/FlowableSubscriber;)V

    return-void
.end method

.method public stopWatermarkInterval()V
    .locals 1

    .line 1226
    iget-object v0, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->mWatermarkDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1227
    iget-object v0, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->mWatermarkDisposable:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    const/4 v0, 0x0

    .line 1228
    iput-object v0, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->mWatermarkDisposable:Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method public videoClip(Ljava/lang/String;II)V
    .locals 4

    const-string v0, ".mp4"

    .line 84
    invoke-static {v0}, Lcom/lewis/edit/utils/FileUtil;->getOutputPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 89
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 p3, 0x1

    aput-object p2, v2, p3

    const/4 p2, 0x2

    aput-object p1, v2, p2

    const/4 p1, 0x3

    aput-object v0, v2, p1

    const-string p1, "ffmpeg -y -ss %d -t %d -accurate_seek -i %s -vcodec copy -acodec copy -avoid_negative_ts 1 -preset superfast %s"

    invoke-static {v1, p1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 90
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "edit crop f-cmd ="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array p3, v3, [Ljava/lang/Object;

    invoke-static {p2, p3}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string p2, " "

    .line 92
    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 93
    invoke-static {}, Lio/microshow/rxffmpeg/RxFFmpegInvoke;->getInstance()Lio/microshow/rxffmpeg/RxFFmpegInvoke;

    move-result-object p2

    invoke-virtual {p2, p1}, Lio/microshow/rxffmpeg/RxFFmpegInvoke;->runCommandRxJava([Ljava/lang/String;)Lio/reactivex/Flowable;

    move-result-object p1

    new-instance p2, Lcom/lewis/edit/presenter/impl/AVEditPresenter$1;

    invoke-direct {p2, p0, v0}, Lcom/lewis/edit/presenter/impl/AVEditPresenter$1;-><init>(Lcom/lewis/edit/presenter/impl/AVEditPresenter;Ljava/lang/String;)V

    .line 95
    invoke-virtual {p1, p2}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/FlowableSubscriber;)V

    return-void
.end method

.method public videoConcat(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 269
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    .line 271
    invoke-static {p1}, Lcom/lewis/edit/utils/FileUtil;->getConcatFile(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    const-string v0, ".mp4"

    .line 273
    invoke-static {v0}, Lcom/lewis/edit/utils/FileUtil;->getOutputPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 277
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v2

    aput-object v0, v4, v1

    const-string p1, "ffmpeg -y -f concat -safe 0 -i %s -c copy %s"

    invoke-static {v3, p1, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 278
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "edit v-merge f-cmd = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v1, " "

    .line 280
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 281
    invoke-static {}, Lio/microshow/rxffmpeg/RxFFmpegInvoke;->getInstance()Lio/microshow/rxffmpeg/RxFFmpegInvoke;

    move-result-object v1

    invoke-virtual {v1, p1}, Lio/microshow/rxffmpeg/RxFFmpegInvoke;->runCommandRxJava([Ljava/lang/String;)Lio/reactivex/Flowable;

    move-result-object p1

    new-instance v1, Lcom/lewis/edit/presenter/impl/AVEditPresenter$4;

    invoke-direct {v1, p0, v0}, Lcom/lewis/edit/presenter/impl/AVEditPresenter$4;-><init>(Lcom/lewis/edit/presenter/impl/AVEditPresenter;Ljava/lang/String;)V

    .line 283
    invoke-virtual {p1, v1}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/FlowableSubscriber;)V

    goto :goto_0

    .line 319
    :cond_0
    invoke-virtual {p0}, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->isViewAttached()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 320
    iget-object v0, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast v0, Lcom/lewis/edit/ui/view/IAVEditView;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-interface {v0, p1}, Lcom/lewis/edit/ui/view/IAVEditView;->videoConcatSuccess(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public workAllVideoEdit(Ljava/util/List;Ljava/lang/String;FFZLjava/lang/String;IILcom/lewis/edit/model/entries/VideoEditInfo;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "FFZ",
            "Ljava/lang/String;",
            "II",
            "Lcom/lewis/edit/model/entries/VideoEditInfo;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move/from16 v1, p8

    .line 815
    invoke-virtual {p0}, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->isViewAttached()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 817
    iget-object v2, v0, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast v2, Lcom/lewis/edit/ui/view/IAVEditView;

    invoke-interface {v2, v3}, Lcom/lewis/edit/ui/view/IAVEditView;->editProgress(I)V

    .line 820
    :cond_0
    invoke-static {}, Lcom/lewis/edit/utils/FileUtil;->getWorkOutPath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->mFinishEditVideoPath:Ljava/lang/String;

    if-eqz p5, :cond_3

    .line 827
    iget-object v2, v0, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->mMvpModel:Lcom/powervision/base/base/BaseModel;

    check-cast v2, Lcom/lewis/edit/model/impl/AVEditModel;

    move/from16 v4, p7

    invoke-virtual {v2, v4}, Lcom/lewis/edit/model/impl/AVEditModel;->getTexturePosition(I)Ljava/lang/String;

    move-result-object v2

    .line 828
    sget v4, Lcom/lewis/edit/R$id;->show_always:I

    if-ne v1, v4, :cond_1

    const/4 v3, 0x1

    move-object v12, v2

    const/4 v13, 0x1

    goto :goto_1

    .line 830
    :cond_1
    sget v4, Lcom/lewis/edit/R$id;->show_end:I

    if-ne v1, v4, :cond_2

    const/4 v3, 0x2

    move-object v12, v2

    const/4 v13, 0x2

    goto :goto_1

    :cond_2
    move-object v12, v2

    goto :goto_0

    :cond_3
    const-string v1, ""

    move-object v12, v1

    :goto_0
    const/4 v13, 0x0

    .line 835
    :goto_1
    iget-object v1, v0, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->mMvpModel:Lcom/powervision/base/base/BaseModel;

    move-object v4, v1

    check-cast v4, Lcom/lewis/edit/model/impl/AVEditModel;

    iget-object v5, v0, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->mFinishEditVideoPath:Ljava/lang/String;

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move-object/from16 v11, p6

    move-object/from16 v14, p9

    invoke-virtual/range {v4 .. v14}, Lcom/lewis/edit/model/impl/AVEditModel;->workAllVideoEdit(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;FFZLjava/lang/String;Ljava/lang/String;ILcom/lewis/edit/model/entries/VideoEditInfo;)Lio/reactivex/Flowable;

    move-result-object v1

    .line 838
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Flowable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object v1

    .line 839
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object v1

    new-instance v2, Lcom/lewis/edit/presenter/impl/-$$Lambda$AVEditPresenter$z-_jK4iWetL3POh8y-4hq91wsW0;

    invoke-direct {v2, p0}, Lcom/lewis/edit/presenter/impl/-$$Lambda$AVEditPresenter$z-_jK4iWetL3POh8y-4hq91wsW0;-><init>(Lcom/lewis/edit/presenter/impl/AVEditPresenter;)V

    new-instance v3, Lcom/lewis/edit/presenter/impl/-$$Lambda$AVEditPresenter$F2ezI8Ui3nCVhMe_eoXNojxkW8M;

    invoke-direct {v3, p0}, Lcom/lewis/edit/presenter/impl/-$$Lambda$AVEditPresenter$F2ezI8Ui3nCVhMe_eoXNojxkW8M;-><init>(Lcom/lewis/edit/presenter/impl/AVEditPresenter;)V

    .line 840
    invoke-virtual {v1, v2, v3}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v1

    iput-object v1, v0, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->mVideoEditDisposable:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public workClipVideo(Ljava/lang/String;II)V
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->mMvpModel:Lcom/powervision/base/base/BaseModel;

    check-cast v0, Lcom/lewis/edit/model/impl/AVEditModel;

    invoke-virtual {v0, p1, p2, p3}, Lcom/lewis/edit/model/impl/AVEditModel;->workClipVideo(Ljava/lang/String;II)Lio/reactivex/Observable;

    move-result-object p1

    .line 138
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 139
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/lewis/edit/presenter/impl/AVEditPresenter$2;

    invoke-direct {p2, p0}, Lcom/lewis/edit/presenter/impl/AVEditPresenter$2;-><init>(Lcom/lewis/edit/presenter/impl/AVEditPresenter;)V

    .line 140
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public workEditVideo(Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 1491
    iget-object v0, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->mMvpModel:Lcom/powervision/base/base/BaseModel;

    check-cast v0, Lcom/lewis/edit/model/impl/AVEditModel;

    invoke-virtual {v0, p1}, Lcom/lewis/edit/model/impl/AVEditModel;->workEditVideo(Ljava/util/List;)Lio/reactivex/Observable;

    move-result-object p1

    .line 1493
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 1494
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/lewis/edit/presenter/impl/AVEditPresenter$21;

    invoke-direct {v0, p0, p2}, Lcom/lewis/edit/presenter/impl/AVEditPresenter$21;-><init>(Lcom/lewis/edit/presenter/impl/AVEditPresenter;I)V

    .line 1495
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public workMuteFun(Ljava/lang/String;)V
    .locals 4

    .line 1442
    invoke-static {}, Lcom/lewis/edit/utils/FileUtil;->getMP4OutPath()Ljava/lang/String;

    move-result-object v0

    .line 1446
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object v0, v2, p1

    const-string p1, "ffmpeg -y -i %s -vcodec copy -an %s"

    invoke-static {v1, p1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 1447
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "edit mute f-cmd = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v1, " "

    .line 1449
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 1450
    invoke-static {}, Lio/microshow/rxffmpeg/RxFFmpegInvoke;->getInstance()Lio/microshow/rxffmpeg/RxFFmpegInvoke;

    move-result-object v1

    invoke-virtual {v1, p1}, Lio/microshow/rxffmpeg/RxFFmpegInvoke;->runCommandRxJava([Ljava/lang/String;)Lio/reactivex/Flowable;

    move-result-object p1

    new-instance v1, Lcom/lewis/edit/presenter/impl/AVEditPresenter$20;

    invoke-direct {v1, p0, v0}, Lcom/lewis/edit/presenter/impl/AVEditPresenter$20;-><init>(Lcom/lewis/edit/presenter/impl/AVEditPresenter;Ljava/lang/String;)V

    .line 1452
    invoke-virtual {p1, v1}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/FlowableSubscriber;)V

    return-void
.end method

.method public workVideoColorMixing(Ljava/lang/String;FFFFFF)V
    .locals 10

    move-object v0, p0

    .line 1161
    iget-object v1, v0, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->mMvpModel:Lcom/powervision/base/base/BaseModel;

    move-object v2, v1

    check-cast v2, Lcom/lewis/edit/model/impl/AVEditModel;

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-virtual/range {v2 .. v9}, Lcom/lewis/edit/model/impl/AVEditModel;->workVideoColorMixing(Ljava/lang/String;FFFFFF)Lio/reactivex/Flowable;

    move-result-object v1

    .line 1163
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Flowable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object v1

    .line 1164
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object v1

    new-instance v2, Lcom/lewis/edit/presenter/impl/AVEditPresenter$15;

    invoke-direct {v2, p0}, Lcom/lewis/edit/presenter/impl/AVEditPresenter$15;-><init>(Lcom/lewis/edit/presenter/impl/AVEditPresenter;)V

    .line 1165
    invoke-virtual {v1, v2}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/FlowableSubscriber;)V

    return-void
.end method

.method public workVideoCopy(Ljava/lang/String;)V
    .locals 2

    .line 766
    invoke-static {}, Lcom/lewis/edit/utils/FileUtil;->getMP4OutPath()Ljava/lang/String;

    move-result-object v0

    .line 767
    iget-object v1, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->mMvpModel:Lcom/powervision/base/base/BaseModel;

    check-cast v1, Lcom/lewis/edit/model/impl/AVEditModel;

    invoke-virtual {v1, p1, v0}, Lcom/lewis/edit/model/impl/AVEditModel;->workVideoCopy(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    .line 769
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 770
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v1, Lcom/lewis/edit/presenter/impl/AVEditPresenter$12;

    invoke-direct {v1, p0, v0}, Lcom/lewis/edit/presenter/impl/AVEditPresenter$12;-><init>(Lcom/lewis/edit/presenter/impl/AVEditPresenter;Ljava/lang/String;)V

    .line 771
    invoke-virtual {p1, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public workVideoSeparate(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1258
    iget-object v0, p0, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->mMvpModel:Lcom/powervision/base/base/BaseModel;

    check-cast v0, Lcom/lewis/edit/model/impl/AVEditModel;

    invoke-virtual {v0, p1, p2}, Lcom/lewis/edit/model/impl/AVEditModel;->workVideoSeparate(Ljava/lang/String;Ljava/util/List;)Lio/reactivex/Flowable;

    move-result-object p1

    .line 1260
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Flowable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object p1

    .line 1261
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object p1

    new-instance p2, Lcom/lewis/edit/presenter/impl/AVEditPresenter$16;

    invoke-direct {p2, p0}, Lcom/lewis/edit/presenter/impl/AVEditPresenter$16;-><init>(Lcom/lewis/edit/presenter/impl/AVEditPresenter;)V

    .line 1262
    invoke-virtual {p1, p2}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/FlowableSubscriber;)V

    return-void
.end method

.method public workVideoSpeed(Ljava/lang/String;F)V
    .locals 9

    .line 1068
    invoke-static {}, Lcom/powervision/base/utils/MediaInfoUtil;->getInstance()Lcom/powervision/base/utils/MediaInfoUtil;

    move-result-object v0

    const-string v1, ".mp4"

    .line 1069
    invoke-static {v1}, Lcom/lewis/edit/utils/FileUtil;->getOutputPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1070
    invoke-virtual {v0, p1}, Lcom/powervision/base/utils/MediaInfoUtil;->isHaveAudio(Ljava/lang/String;)Z

    move-result v0

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float v3, p2, v2

    div-float/2addr v2, v3

    const/4 v3, 0x3

    const/4 v4, 0x2

    const-string v5, "*PTS"

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-nez v0, :cond_0

    .line 1076
    sget-object p2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v0, v3, [Ljava/lang/Object;

    aput-object p1, v0, v7

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v6

    aput-object v1, v0, v4

    const-string p1, "ffmpeg -y -i %s -filter:v setpts=%s -preset superfast %s"

    invoke-static {p2, p1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 1080
    :cond_0
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    aput-object p1, v8, v7

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v8, v6

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v8, v4

    aput-object v1, v8, v3

    const-string p1, "ffmpeg -y -i %s -filter_complex [0:v]setpts=%s[v];[0:a]atempo=%s[a] -map [v] -map [a] -preset superfast %s"

    invoke-static {v0, p1, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 1082
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "edit speed f-cmd = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v0, v7, [Ljava/lang/Object;

    invoke-static {p2, v0}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string p2, " "

    .line 1084
    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 1085
    invoke-static {}, Lio/microshow/rxffmpeg/RxFFmpegInvoke;->getInstance()Lio/microshow/rxffmpeg/RxFFmpegInvoke;

    move-result-object p2

    invoke-virtual {p2, p1}, Lio/microshow/rxffmpeg/RxFFmpegInvoke;->runCommandRxJava([Ljava/lang/String;)Lio/reactivex/Flowable;

    move-result-object p1

    new-instance p2, Lcom/lewis/edit/presenter/impl/AVEditPresenter$14;

    invoke-direct {p2, p0, v1}, Lcom/lewis/edit/presenter/impl/AVEditPresenter$14;-><init>(Lcom/lewis/edit/presenter/impl/AVEditPresenter;Ljava/lang/String;)V

    .line 1087
    invoke-virtual {p1, p2}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/FlowableSubscriber;)V

    return-void
.end method
