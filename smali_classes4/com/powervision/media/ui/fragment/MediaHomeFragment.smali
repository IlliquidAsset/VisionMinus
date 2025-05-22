.class public Lcom/powervision/media/ui/fragment/MediaHomeFragment;
.super Lcom/powervision/base/base/BaseFragment;
.source "MediaHomeFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/media/ui/fragment/MediaHomeFragment$SaveHandler;
    }
.end annotation


# static fields
.field private static final PROGRESS:I = 0x0

.field private static final SUCCESS:I = 0x1


# instance fields
.field private array:Landroid/util/SparseIntArray;

.field private handler:Lcom/powervision/media/ui/fragment/MediaHomeFragment$SaveHandler;

.field private mAdapter:Lcom/powervision/media/ui/adapter/MediaHomeAdapter;

.field private mDeleteEditFileDisposable:Lio/reactivex/disposables/Disposable;

.field private mImage:Landroid/widget/ImageView;

.field private mLayoutProgress:Landroid/widget/RelativeLayout;

.field private mProgress:Landroid/widget/ProgressBar;

.field private mTabLayout:Lcom/google/android/material/tabs/TabLayout;

.field private mText:Landroid/widget/TextView;

.field private mTextProgress:Landroid/widget/TextView;

.field private mViewPager:Lcom/powervision/base/views/ScrollControlVP;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 66
    invoke-direct {p0}, Lcom/powervision/base/base/BaseFragment;-><init>()V

    .line 291
    new-instance v0, Lcom/powervision/media/ui/fragment/MediaHomeFragment$SaveHandler;

    invoke-direct {v0, p0}, Lcom/powervision/media/ui/fragment/MediaHomeFragment$SaveHandler;-><init>(Lcom/powervision/media/ui/fragment/MediaHomeFragment;)V

    iput-object v0, p0, Lcom/powervision/media/ui/fragment/MediaHomeFragment;->handler:Lcom/powervision/media/ui/fragment/MediaHomeFragment$SaveHandler;

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/media/ui/fragment/MediaHomeFragment;)Lcom/powervision/base/views/ScrollControlVP;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/powervision/media/ui/fragment/MediaHomeFragment;->mViewPager:Lcom/powervision/base/views/ScrollControlVP;

    return-object p0
.end method

.method static synthetic access$100(Lcom/powervision/media/ui/fragment/MediaHomeFragment;)Landroid/widget/TextView;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/powervision/media/ui/fragment/MediaHomeFragment;->mText:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/powervision/media/ui/fragment/MediaHomeFragment;Landroid/content/Context;Ljava/io/File;)V
    .locals 0

    .line 66
    invoke-direct {p0, p1, p2}, Lcom/powervision/media/ui/fragment/MediaHomeFragment;->scanFile(Landroid/content/Context;Ljava/io/File;)V

    return-void
.end method

.method static synthetic access$300(Lcom/powervision/media/ui/fragment/MediaHomeFragment;)Lcom/powervision/media/ui/fragment/MediaHomeFragment$SaveHandler;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/powervision/media/ui/fragment/MediaHomeFragment;->handler:Lcom/powervision/media/ui/fragment/MediaHomeFragment$SaveHandler;

    return-object p0
.end method

.method static synthetic access$400(Lcom/powervision/media/ui/fragment/MediaHomeFragment;I)V
    .locals 0

    .line 66
    invoke-direct {p0, p1}, Lcom/powervision/media/ui/fragment/MediaHomeFragment;->saveProgress(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/powervision/media/ui/fragment/MediaHomeFragment;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Lcom/powervision/media/ui/fragment/MediaHomeFragment;->saveSuccess()V

    return-void
.end method

.method private deleteEditFileData()V
    .locals 2

    .line 316
    invoke-static {}, Lcom/powervision/base/utils/FileUtils;->getVideoEditDir()Ljava/lang/String;

    move-result-object v0

    .line 317
    new-instance v1, Lcom/powervision/media/ui/fragment/-$$Lambda$MediaHomeFragment$IhKbvj4J7D2bVdLcWEFuZIzHfas;

    invoke-direct {v1, v0}, Lcom/powervision/media/ui/fragment/-$$Lambda$MediaHomeFragment$IhKbvj4J7D2bVdLcWEFuZIzHfas;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object v0

    .line 322
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 323
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/powervision/media/ui/fragment/-$$Lambda$MediaHomeFragment$bWG4p8MlmS8gaGtrNMbeu4DUr84;

    invoke-direct {v1, p0}, Lcom/powervision/media/ui/fragment/-$$Lambda$MediaHomeFragment$bWG4p8MlmS8gaGtrNMbeu4DUr84;-><init>(Lcom/powervision/media/ui/fragment/MediaHomeFragment;)V

    .line 324
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/media/ui/fragment/MediaHomeFragment;->mDeleteEditFileDisposable:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method static synthetic lambda$deleteEditFileData$7(Ljava/lang/String;Lio/reactivex/ObservableEmitter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 318
    invoke-static {p0}, Lcom/powervision/localhttp/FileUtil;->deleteSpecifyFile(Ljava/lang/String;)Z

    move-result p0

    .line 319
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {p1, p0}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    .line 321
    invoke-interface {p1}, Lio/reactivex/ObservableEmitter;->onComplete()V

    return-void
.end method

.method static synthetic lambda$initData$2()V
    .locals 0

    return-void
.end method

.method static synthetic lambda$showBottomDialog$3(Landroid/app/Dialog;Landroid/view/View;)V
    .locals 1

    .line 189
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->get()Lcom/powervision/gcs/usb2/GCSConnectionManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->isAp03Connected()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 190
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/camera/camera/CameraManager;->getAllParameters()V

    .line 191
    invoke-static {}, Lcom/alibaba/android/arouter/launcher/ARouter;->getInstance()Lcom/alibaba/android/arouter/launcher/ARouter;

    move-result-object p1

    const-string v0, "/media/mediaLibActivity"

    invoke-virtual {p1, v0}, Lcom/alibaba/android/arouter/launcher/ARouter;->build(Ljava/lang/String;)Lcom/alibaba/android/arouter/facade/Postcard;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/android/arouter/facade/Postcard;->navigation()Ljava/lang/Object;

    goto :goto_0

    .line 192
    :cond_0
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->get()Lcom/powervision/gcs/usb2/GCSConnectionManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->isShipConnected()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 193
    invoke-static {}, Lcom/alibaba/android/arouter/launcher/ARouter;->getInstance()Lcom/alibaba/android/arouter/launcher/ARouter;

    move-result-object p1

    const-string v0, "/pvw4/ShipMediaActivity"

    invoke-virtual {p1, v0}, Lcom/alibaba/android/arouter/launcher/ARouter;->build(Ljava/lang/String;)Lcom/alibaba/android/arouter/facade/Postcard;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/android/arouter/facade/Postcard;->navigation()Ljava/lang/Object;

    goto :goto_0

    .line 195
    :cond_1
    sget p1, Lcom/powervision/media/R$string;->AP03_Msg_27:I

    invoke-static {p1}, Lcom/powervision/base/utils/ToastUtils;->showDefaultToast(I)V

    .line 197
    :goto_0
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method static synthetic lambda$showBottomDialog$6(Landroid/app/Dialog;Landroid/view/View;)V
    .locals 0

    .line 212
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 213
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->get()Lcom/powervision/gcs/usb2/GCSConnectionManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->isAp03Connected()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 214
    invoke-static {}, Lcom/alibaba/android/arouter/launcher/ARouter;->getInstance()Lcom/alibaba/android/arouter/launcher/ARouter;

    move-result-object p0

    const-string p1, "/media/mediaLibActivity"

    invoke-virtual {p0, p1}, Lcom/alibaba/android/arouter/launcher/ARouter;->build(Ljava/lang/String;)Lcom/alibaba/android/arouter/facade/Postcard;

    move-result-object p0

    invoke-virtual {p0}, Lcom/alibaba/android/arouter/facade/Postcard;->navigation()Ljava/lang/Object;

    goto :goto_0

    .line 215
    :cond_0
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->get()Lcom/powervision/gcs/usb2/GCSConnectionManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->isShipConnected()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 216
    invoke-static {}, Lcom/alibaba/android/arouter/launcher/ARouter;->getInstance()Lcom/alibaba/android/arouter/launcher/ARouter;

    move-result-object p0

    const-string p1, "/pvw4/ShipMediaActivity"

    invoke-virtual {p0, p1}, Lcom/alibaba/android/arouter/launcher/ARouter;->build(Ljava/lang/String;)Lcom/alibaba/android/arouter/facade/Postcard;

    move-result-object p0

    invoke-virtual {p0}, Lcom/alibaba/android/arouter/facade/Postcard;->navigation()Ljava/lang/Object;

    goto :goto_0

    .line 218
    :cond_1
    sget p0, Lcom/powervision/media/R$string;->AP03_Msg_27:I

    invoke-static {p0}, Lcom/powervision/base/utils/ToastUtils;->showDefaultToast(I)V

    :goto_0
    return-void
.end method

.method public static newInstance()Lcom/powervision/media/ui/fragment/MediaHomeFragment;
    .locals 1

    .line 87
    new-instance v0, Lcom/powervision/media/ui/fragment/MediaHomeFragment;

    invoke-direct {v0}, Lcom/powervision/media/ui/fragment/MediaHomeFragment;-><init>()V

    return-object v0
.end method

.method private saveProgress(I)V
    .locals 5

    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "progress = = = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 276
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/MediaHomeFragment;->mTextProgress:Landroid/widget/TextView;

    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "%d%%"

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 277
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/MediaHomeFragment;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void
.end method

.method private saveSuccess()V
    .locals 2

    .line 281
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/MediaHomeFragment;->mTextProgress:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 282
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/MediaHomeFragment;->mProgress:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 283
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/MediaHomeFragment;->mLayoutProgress:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 284
    new-instance v0, Lcom/powervision/media/widgets/MediaTipDialog;

    invoke-virtual {p0}, Lcom/powervision/media/ui/fragment/MediaHomeFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/powervision/media/widgets/MediaTipDialog;-><init>(Landroid/content/Context;)V

    .line 285
    sget v1, Lcom/powervision/media/R$string;->App_MediaLib_148:I

    invoke-virtual {v0, v1}, Lcom/powervision/media/widgets/MediaTipDialog;->setTitle(I)V

    .line 286
    sget v1, Lcom/powervision/media/R$string;->App_MediaLib_149:I

    invoke-virtual {v0, v1}, Lcom/powervision/media/widgets/MediaTipDialog;->setContent(I)V

    .line 287
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/powervision/media/ui/fragment/-$$Lambda$ABJdJZexM0QuGwv1gKsM0KTynbU;

    invoke-direct {v1, v0}, Lcom/powervision/media/ui/fragment/-$$Lambda$ABJdJZexM0QuGwv1gKsM0KTynbU;-><init>(Lcom/powervision/media/widgets/MediaTipDialog;)V

    invoke-virtual {v0, v1}, Lcom/powervision/media/widgets/MediaTipDialog;->setDialogTipListener(Lcom/powervision/media/widgets/MediaTipDialog$DialogTipListener;)V

    .line 288
    invoke-virtual {v0}, Lcom/powervision/media/widgets/MediaTipDialog;->show()V

    return-void
.end method

.method private scanFile(Landroid/content/Context;Ljava/io/File;)V
    .locals 2

    .line 265
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 266
    invoke-static {p2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 267
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private showBottomDialog()V
    .locals 9

    .line 172
    new-instance v0, Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/powervision/media/ui/fragment/MediaHomeFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    sget v2, Lcom/powervision/media/R$style;->BottomDialog:I

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 174
    invoke-virtual {p0}, Lcom/powervision/media/ui/fragment/MediaHomeFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/powervision/media/R$layout;->media_bottom_select:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 175
    sget v2, Lcom/powervision/media/R$id;->text_sd:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 176
    sget v3, Lcom/powervision/media/R$id;->text_local_pic:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 177
    sget v4, Lcom/powervision/media/R$id;->text_local_video:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 178
    sget v5, Lcom/powervision/media/R$id;->text_into_device:I

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 179
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 181
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 182
    invoke-virtual {p0}, Lcom/powervision/media/ui/fragment/MediaHomeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v7, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    const/high16 v8, 0x41800000    # 16.0f

    invoke-static {v8}, Lorg/xutils/common/util/DensityUtil;->dip2px(F)I

    move-result v8

    sub-int/2addr v7, v8

    iput v7, v6, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    const/high16 v7, 0x41000000    # 8.0f

    .line 183
    invoke-static {v7}, Lorg/xutils/common/util/DensityUtil;->dip2px(F)I

    move-result v7

    iput v7, v6, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 184
    invoke-virtual {v1, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 185
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/Window;

    const/16 v6, 0x50

    invoke-virtual {v1, v6}, Landroid/view/Window;->setGravity(I)V

    .line 186
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    sget v6, Lcom/powervision/media/R$style;->PopupAnimationBottom:I

    invoke-virtual {v1, v6}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 187
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 188
    new-instance v1, Lcom/powervision/media/ui/fragment/-$$Lambda$MediaHomeFragment$0PmqEKv4mpiPWZiZqmzmF6VC34Y;

    invoke-direct {v1, v0}, Lcom/powervision/media/ui/fragment/-$$Lambda$MediaHomeFragment$0PmqEKv4mpiPWZiZqmzmF6VC34Y;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    new-instance v1, Lcom/powervision/media/ui/fragment/-$$Lambda$MediaHomeFragment$nv4KhjmdQao-5sthukUMqjOMtms;

    invoke-direct {v1, p0, v0}, Lcom/powervision/media/ui/fragment/-$$Lambda$MediaHomeFragment$nv4KhjmdQao-5sthukUMqjOMtms;-><init>(Lcom/powervision/media/ui/fragment/MediaHomeFragment;Landroid/app/Dialog;)V

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    new-instance v1, Lcom/powervision/media/ui/fragment/-$$Lambda$MediaHomeFragment$7izds4kh0YTQdTKxu3f9_hyFXKg;

    invoke-direct {v1, p0, v0}, Lcom/powervision/media/ui/fragment/-$$Lambda$MediaHomeFragment$7izds4kh0YTQdTKxu3f9_hyFXKg;-><init>(Lcom/powervision/media/ui/fragment/MediaHomeFragment;Landroid/app/Dialog;)V

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 211
    new-instance v1, Lcom/powervision/media/ui/fragment/-$$Lambda$MediaHomeFragment$G-EaiGP_jqHLEY3fuKdj39ChNo8;

    invoke-direct {v1, v0}, Lcom/powervision/media/ui/fragment/-$$Lambda$MediaHomeFragment$G-EaiGP_jqHLEY3fuKdj39ChNo8;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private startSave()V
    .locals 2

    .line 271
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/MediaHomeFragment;->mLayoutProgress:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method protected getLayoutResId()I
    .locals 1

    .line 92
    sget v0, Lcom/powervision/media/R$layout;->media_home_fragment:I

    return v0
.end method

.method protected initData()V
    .locals 3

    .line 122
    invoke-virtual {p0}, Lcom/powervision/media/ui/fragment/MediaHomeFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 125
    :cond_0
    new-instance v0, Lcom/powervision/media/ui/adapter/MediaHomeAdapter;

    invoke-virtual {p0}, Lcom/powervision/media/ui/fragment/MediaHomeFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/powervision/media/ui/fragment/MediaHomeFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/powervision/media/ui/adapter/MediaHomeAdapter;-><init>(Landroidx/fragment/app/FragmentManager;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/powervision/media/ui/fragment/MediaHomeFragment;->mAdapter:Lcom/powervision/media/ui/adapter/MediaHomeAdapter;

    .line 126
    iget-object v1, p0, Lcom/powervision/media/ui/fragment/MediaHomeFragment;->mViewPager:Lcom/powervision/base/views/ScrollControlVP;

    invoke-virtual {v1, v0}, Lcom/powervision/base/views/ScrollControlVP;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 127
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/MediaHomeFragment;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    iget-object v1, p0, Lcom/powervision/media/ui/fragment/MediaHomeFragment;->mViewPager:Lcom/powervision/base/views/ScrollControlVP;

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 128
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/MediaHomeFragment;->mViewPager:Lcom/powervision/base/views/ScrollControlVP;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/powervision/base/views/ScrollControlVP;->setCurrentItem(I)V

    .line 129
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/MediaHomeFragment;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    new-instance v1, Lcom/powervision/media/ui/fragment/MediaHomeFragment$1;

    invoke-direct {v1, p0}, Lcom/powervision/media/ui/fragment/MediaHomeFragment$1;-><init>(Lcom/powervision/media/ui/fragment/MediaHomeFragment;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->addOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;)V

    .line 150
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/MediaHomeFragment;->mImage:Landroid/widget/ImageView;

    new-instance v1, Lcom/powervision/media/ui/fragment/-$$Lambda$MediaHomeFragment$gIRwqGlje88QNW5FCYEmsQOl_hc;

    invoke-direct {v1, p0}, Lcom/powervision/media/ui/fragment/-$$Lambda$MediaHomeFragment$gIRwqGlje88QNW5FCYEmsQOl_hc;-><init>(Lcom/powervision/media/ui/fragment/MediaHomeFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/MediaHomeFragment;->mText:Landroid/widget/TextView;

    new-instance v1, Lcom/powervision/media/ui/fragment/-$$Lambda$MediaHomeFragment$I5Vx_8ydvHC5uUKaTYMJdi1Xj2M;

    invoke-direct {v1, p0}, Lcom/powervision/media/ui/fragment/-$$Lambda$MediaHomeFragment$I5Vx_8ydvHC5uUKaTYMJdi1Xj2M;-><init>(Lcom/powervision/media/ui/fragment/MediaHomeFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/powervision/media/ui/fragment/MediaHomeFragment;->array:Landroid/util/SparseIntArray;

    .line 166
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    sget-object v1, Lcom/powervision/media/ui/fragment/-$$Lambda$MediaHomeFragment$MtgUuLfsqhwToZ2UgAlmKIK_3do;->INSTANCE:Lcom/powervision/media/ui/fragment/-$$Lambda$MediaHomeFragment$MtgUuLfsqhwToZ2UgAlmKIK_3do;

    invoke-virtual {v0, v1}, Lcom/powervision/camera/camera/CameraManager;->addCameraGetCameraAllParametersListener(Lcom/powervision/camera/camera/CameraListener$CameraNotifyGetCameraAllParametersListener;)V

    return-void
.end method

.method protected initView(Landroid/os/Bundle;)V
    .locals 0

    .line 97
    sget p1, Lcom/powervision/media/R$id;->media_tablayout:I

    invoke-virtual {p0, p1}, Lcom/powervision/media/ui/fragment/MediaHomeFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/tabs/TabLayout;

    iput-object p1, p0, Lcom/powervision/media/ui/fragment/MediaHomeFragment;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    .line 98
    sget p1, Lcom/powervision/media/R$id;->media_viewpager:I

    invoke-virtual {p0, p1}, Lcom/powervision/media/ui/fragment/MediaHomeFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/powervision/base/views/ScrollControlVP;

    iput-object p1, p0, Lcom/powervision/media/ui/fragment/MediaHomeFragment;->mViewPager:Lcom/powervision/base/views/ScrollControlVP;

    .line 99
    sget p1, Lcom/powervision/media/R$id;->image_channel:I

    invoke-virtual {p0, p1}, Lcom/powervision/media/ui/fragment/MediaHomeFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/powervision/media/ui/fragment/MediaHomeFragment;->mImage:Landroid/widget/ImageView;

    .line 100
    sget p1, Lcom/powervision/media/R$id;->text_select:I

    invoke-virtual {p0, p1}, Lcom/powervision/media/ui/fragment/MediaHomeFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/media/ui/fragment/MediaHomeFragment;->mText:Landroid/widget/TextView;

    .line 101
    sget p1, Lcom/powervision/media/R$id;->progress_bar:I

    invoke-virtual {p0, p1}, Lcom/powervision/media/ui/fragment/MediaHomeFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/powervision/media/ui/fragment/MediaHomeFragment;->mProgress:Landroid/widget/ProgressBar;

    .line 102
    sget p1, Lcom/powervision/media/R$id;->text_progress:I

    invoke-virtual {p0, p1}, Lcom/powervision/media/ui/fragment/MediaHomeFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/media/ui/fragment/MediaHomeFragment;->mTextProgress:Landroid/widget/TextView;

    .line 103
    sget p1, Lcom/powervision/media/R$id;->progress_layout:I

    invoke-virtual {p0, p1}, Lcom/powervision/media/ui/fragment/MediaHomeFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/powervision/media/ui/fragment/MediaHomeFragment;->mLayoutProgress:Landroid/widget/RelativeLayout;

    return-void
.end method

.method public synthetic lambda$deleteEditFileData$8$MediaHomeFragment(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 325
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "delete-edit-data = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 326
    iget-object p1, p0, Lcom/powervision/media/ui/fragment/MediaHomeFragment;->mDeleteEditFileDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result p1

    if-nez p1, :cond_0

    .line 327
    iget-object p1, p0, Lcom/powervision/media/ui/fragment/MediaHomeFragment;->mDeleteEditFileDisposable:Lio/reactivex/disposables/Disposable;

    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->dispose()V

    const/4 p1, 0x0

    .line 328
    iput-object p1, p0, Lcom/powervision/media/ui/fragment/MediaHomeFragment;->mDeleteEditFileDisposable:Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method public synthetic lambda$initData$0$MediaHomeFragment(Landroid/view/View;)V
    .locals 0

    .line 150
    invoke-direct {p0}, Lcom/powervision/media/ui/fragment/MediaHomeFragment;->showBottomDialog()V

    return-void
.end method

.method public synthetic lambda$initData$1$MediaHomeFragment(Landroid/view/View;)V
    .locals 1

    .line 153
    iget-object p1, p0, Lcom/powervision/media/ui/fragment/MediaHomeFragment;->mViewPager:Lcom/powervision/base/views/ScrollControlVP;

    invoke-virtual {p1}, Lcom/powervision/base/views/ScrollControlVP;->getCurrentItem()I

    move-result p1

    if-nez p1, :cond_1

    .line 155
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/MediaHomeFragment;->mAdapter:Lcom/powervision/media/ui/adapter/MediaHomeAdapter;

    invoke-virtual {v0, p1}, Lcom/powervision/media/ui/adapter/MediaHomeAdapter;->getItem(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/powervision/media/ui/fragment/MediaFragment;

    if-eqz v0, :cond_1

    .line 156
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/MediaHomeFragment;->mAdapter:Lcom/powervision/media/ui/adapter/MediaHomeAdapter;

    invoke-virtual {v0, p1}, Lcom/powervision/media/ui/adapter/MediaHomeAdapter;->getItem(I)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/powervision/media/ui/fragment/MediaFragment;

    check-cast p1, Lcom/powervision/media/ui/fragment/MediaFragment;

    invoke-virtual {p1}, Lcom/powervision/media/ui/fragment/MediaFragment;->getCurrentItem()I

    move-result p1

    if-nez p1, :cond_0

    .line 158
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object p1

    const/16 v0, 0xe1

    invoke-virtual {p1, v0}, Lcom/powervision/base/rxbus/RxBus;->post(I)V

    goto :goto_0

    .line 160
    :cond_0
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object p1

    const/16 v0, 0xe2

    invoke-virtual {p1, v0}, Lcom/powervision/base/rxbus/RxBus;->post(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public synthetic lambda$showBottomDialog$4$MediaHomeFragment(Landroid/app/Dialog;Landroid/view/View;)V
    .locals 1

    .line 200
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 201
    iget-object p1, p0, Lcom/powervision/media/ui/fragment/MediaHomeFragment;->array:Landroid/util/SparseIntArray;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 202
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object p1

    iget-object p2, p0, Lcom/powervision/media/ui/fragment/MediaHomeFragment;->array:Landroid/util/SparseIntArray;

    const/16 v0, 0xe0

    invoke-virtual {p1, v0, p2}, Lcom/powervision/base/rxbus/RxBus;->post(ILjava/lang/Object;)V

    .line 203
    const-class p1, Lcom/powervision/media/ui/activity/ImageAlbumActivity;

    invoke-virtual {p0, p1}, Lcom/powervision/media/ui/fragment/MediaHomeFragment;->startActivity(Ljava/lang/Class;)V

    return-void
.end method

.method public synthetic lambda$showBottomDialog$5$MediaHomeFragment(Landroid/app/Dialog;Landroid/view/View;)V
    .locals 1

    .line 206
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 207
    iget-object p1, p0, Lcom/powervision/media/ui/fragment/MediaHomeFragment;->array:Landroid/util/SparseIntArray;

    const/4 p2, 0x0

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 208
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object p1

    iget-object p2, p0, Lcom/powervision/media/ui/fragment/MediaHomeFragment;->array:Landroid/util/SparseIntArray;

    const/16 v0, 0xe0

    invoke-virtual {p1, v0, p2}, Lcom/powervision/base/rxbus/RxBus;->post(ILjava/lang/Object;)V

    .line 209
    const-class p1, Lcom/powervision/media/ui/activity/VideoAlbumActivity;

    invoke-virtual {p0, p1}, Lcom/powervision/media/ui/fragment/MediaHomeFragment;->startActivity(Ljava/lang/Class;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 108
    invoke-super {p0, p1}, Lcom/powervision/base/base/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 109
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/powervision/base/rxbus/RxBus;->register(Ljava/lang/Object;)V

    .line 111
    invoke-direct {p0}, Lcom/powervision/media/ui/fragment/MediaHomeFragment;->deleteEditFileData()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 116
    invoke-super {p0}, Lcom/powervision/base/base/BaseFragment;->onDestroy()V

    .line 117
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/base/rxbus/RxBus;->unRegister(Ljava/lang/Object;)V

    return-void
.end method

.method public savePicture(Lcom/powervision/base/model/SelectModel;)V
    .locals 3
    .annotation runtime Lcom/powervision/base/rxbus/Subscribe;
        code = 0xe6
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 230
    :cond_0
    iget-object v0, p1, Lcom/powervision/base/model/SelectModel;->infos:Ljava/util/List;

    .line 231
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sectionInfo = = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 232
    iget p1, p1, Lcom/powervision/base/model/SelectModel;->type:I

    .line 233
    invoke-static {v0}, Lcom/powervision/base/utils/StringUtils;->isListValid(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 234
    invoke-direct {p0}, Lcom/powervision/media/ui/fragment/MediaHomeFragment;->startSave()V

    .line 235
    new-instance v1, Lcom/powervision/media/ui/fragment/MediaHomeFragment$2;

    invoke-direct {v1, p0, v0, p1}, Lcom/powervision/media/ui/fragment/MediaHomeFragment$2;-><init>(Lcom/powervision/media/ui/fragment/MediaHomeFragment;Ljava/util/List;I)V

    .line 254
    invoke-virtual {v1}, Lcom/powervision/media/ui/fragment/MediaHomeFragment$2;->start()V

    :cond_1
    return-void
.end method

.method public setScrollable(Z)V
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/MediaHomeFragment;->mViewPager:Lcom/powervision/base/views/ScrollControlVP;

    invoke-virtual {v0, p1}, Lcom/powervision/base/views/ScrollControlVP;->setIsCanScroll(Z)V

    return-void
.end method
