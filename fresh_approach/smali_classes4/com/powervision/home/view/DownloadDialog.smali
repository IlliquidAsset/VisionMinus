.class public Lcom/powervision/home/view/DownloadDialog;
.super Landroidx/appcompat/app/AlertDialog;
.source "DownloadDialog.java"


# instance fields
.field CONNECT_TIMEOUT:I

.field COUNT:I

.field LIMATE:I

.field READ_TIMEOUT:I

.field WRITE_TIMEOUT:I

.field after_Apk_name:Ljava/lang/String;

.field before_APK_Name:Ljava/lang/String;

.field c:J

.field commonCallBack:Lcn/powervision/upgrade/manager/CommonCallBack;

.field downloadBasePath:Ljava/lang/String;

.field handler:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mTextView:Landroid/widget/TextView;

.field totlal:J

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/powervision/upgrade/manager/CommonCallBack;)V
    .locals 3

    .line 67
    invoke-direct {p0, p1}, Landroidx/appcompat/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 73
    new-instance v0, Lcom/powervision/home/view/DownloadDialog$1;

    invoke-direct {v0, p0}, Lcom/powervision/home/view/DownloadDialog$1;-><init>(Lcom/powervision/home/view/DownloadDialog;)V

    iput-object v0, p0, Lcom/powervision/home/view/DownloadDialog;->handler:Landroid/os/Handler;

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/NewVisionPlus/apk/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/home/view/DownloadDialog;->downloadBasePath:Ljava/lang/String;

    const-string v0, "newvisionplus.apk.1"

    .line 127
    iput-object v0, p0, Lcom/powervision/home/view/DownloadDialog;->before_APK_Name:Ljava/lang/String;

    const-string v0, "newvisionplus.apk"

    .line 128
    iput-object v0, p0, Lcom/powervision/home/view/DownloadDialog;->after_Apk_name:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 142
    iput-wide v0, p0, Lcom/powervision/home/view/DownloadDialog;->c:J

    const/16 v2, 0x8

    .line 185
    iput v2, p0, Lcom/powervision/home/view/DownloadDialog;->READ_TIMEOUT:I

    .line 186
    iput v2, p0, Lcom/powervision/home/view/DownloadDialog;->WRITE_TIMEOUT:I

    .line 187
    iput v2, p0, Lcom/powervision/home/view/DownloadDialog;->CONNECT_TIMEOUT:I

    const/4 v2, 0x0

    .line 188
    iput v2, p0, Lcom/powervision/home/view/DownloadDialog;->COUNT:I

    const/16 v2, 0xa

    .line 189
    iput v2, p0, Lcom/powervision/home/view/DownloadDialog;->LIMATE:I

    .line 190
    iput-wide v0, p0, Lcom/powervision/home/view/DownloadDialog;->totlal:J

    .line 68
    iput-object p1, p0, Lcom/powervision/home/view/DownloadDialog;->mContext:Landroid/content/Context;

    .line 69
    iput-object p2, p0, Lcom/powervision/home/view/DownloadDialog;->commonCallBack:Lcn/powervision/upgrade/manager/CommonCallBack;

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/home/view/DownloadDialog;)Landroid/widget/ProgressBar;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/powervision/home/view/DownloadDialog;->mProgressBar:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic access$100(Lcom/powervision/home/view/DownloadDialog;)Landroid/widget/TextView;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/powervision/home/view/DownloadDialog;->mTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method private initView()V
    .locals 3

    .line 131
    iget-object v0, p0, Lcom/powervision/home/view/DownloadDialog;->mContext:Landroid/content/Context;

    sget v1, Lcom/powervision/home/R$layout;->download_dialog:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/home/view/DownloadDialog;->view:Landroid/view/View;

    .line 132
    sget v1, Lcom/powervision/home/R$id;->mTextView:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/powervision/home/view/DownloadDialog;->mTextView:Landroid/widget/TextView;

    .line 133
    iget-object v0, p0, Lcom/powervision/home/view/DownloadDialog;->view:Landroid/view/View;

    sget v1, Lcom/powervision/home/R$id;->mProgressBar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/powervision/home/view/DownloadDialog;->mProgressBar:Landroid/widget/ProgressBar;

    .line 134
    iget-object v0, p0, Lcom/powervision/home/view/DownloadDialog;->view:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/powervision/home/view/DownloadDialog;->setContentView(Landroid/view/View;)V

    .line 135
    invoke-static {}, Lcn/powervision/upgrade/FileUtil;->clearApkDir()V

    .line 136
    invoke-virtual {p0}, Lcom/powervision/home/view/DownloadDialog;->requestApk()V

    return-void
.end method

.method private setStyle()V
    .locals 3

    const/4 v0, 0x0

    .line 146
    invoke-virtual {p0, v0}, Lcom/powervision/home/view/DownloadDialog;->setCancelable(Z)V

    .line 148
    invoke-virtual {p0, v0}, Lcom/powervision/home/view/DownloadDialog;->setCanceledOnTouchOutside(Z)V

    .line 149
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 150
    invoke-virtual {p0}, Lcom/powervision/home/view/DownloadDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 152
    invoke-virtual {p0}, Lcom/powervision/home/view/DownloadDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/16 v2, 0x11

    .line 154
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 156
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v0, v0, 0x5

    mul-int/lit8 v0, v0, 0x3

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    return-void
.end method


# virtual methods
.method public downLoad(Ljava/lang/String;)V
    .locals 5

    .line 193
    iget v0, p0, Lcom/powervision/home/view/DownloadDialog;->COUNT:I

    iget v1, p0, Lcom/powervision/home/view/DownloadDialog;->LIMATE:I

    if-lt v0, v1, :cond_0

    .line 194
    iget-object p1, p0, Lcom/powervision/home/view/DownloadDialog;->handler:Landroid/os/Handler;

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    .line 197
    :cond_0
    new-instance v0, Lokhttp3/OkHttpClient;

    invoke-direct {v0}, Lokhttp3/OkHttpClient;-><init>()V

    .line 198
    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    iget v2, p0, Lcom/powervision/home/view/DownloadDialog;->READ_TIMEOUT:I

    int-to-long v2, v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 199
    invoke-virtual {v1, v2, v3, v4}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    iget v2, p0, Lcom/powervision/home/view/DownloadDialog;->WRITE_TIMEOUT:I

    int-to-long v2, v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 200
    invoke-virtual {v1, v2, v3, v4}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    iget v2, p0, Lcom/powervision/home/view/DownloadDialog;->CONNECT_TIMEOUT:I

    int-to-long v2, v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 201
    invoke-virtual {v1, v2, v3, v4}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    const/4 v2, 0x1

    .line 202
    invoke-virtual {v1, v2}, Lokhttp3/OkHttpClient$Builder;->retryOnConnectionFailure(Z)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    .line 204
    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    .line 205
    invoke-virtual {v1, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bytes="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/powervision/home/view/DownloadDialog;->c:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Range"

    .line 206
    invoke-virtual {v1, v3, v2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    .line 207
    invoke-virtual {v1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v1

    .line 208
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    .line 209
    new-instance v1, Lcom/powervision/home/view/DownloadDialog$3;

    invoke-direct {v1, p0, p1}, Lcom/powervision/home/view/DownloadDialog$3;-><init>(Lcom/powervision/home/view/DownloadDialog;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 118
    invoke-super {p0, p1}, Landroidx/appcompat/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 120
    invoke-virtual {p0, p1}, Lcom/powervision/home/view/DownloadDialog;->setCancelable(Z)V

    .line 121
    invoke-direct {p0}, Lcom/powervision/home/view/DownloadDialog;->setStyle()V

    .line 123
    invoke-direct {p0}, Lcom/powervision/home/view/DownloadDialog;->initView()V

    return-void
.end method

.method public requestApk()V
    .locals 2

    .line 166
    invoke-static {}, Lcn/powervision/upgrade/api/UpgradeAPIManager;->getInstance()Lcn/powervision/upgrade/api/UpgradeAPIManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/powervision/upgrade/api/UpgradeAPIManager;->getFirmwareApi()Lcn/powervision/upgrade/api/FirmwareApi;

    move-result-object v0

    invoke-interface {v0}, Lcn/powervision/upgrade/api/FirmwareApi;->appDownLoad()Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/base/net/observable/ObservableLoader;->getObservable(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object v0

    .line 167
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/powervision/home/view/DownloadDialog$2;

    invoke-direct {v1, p0}, Lcom/powervision/home/view/DownloadDialog$2;-><init>(Lcom/powervision/home/view/DownloadDialog;)V

    .line 168
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public setProgress(I)V
    .locals 3

    .line 161
    iget-object v0, p0, Lcom/powervision/home/view/DownloadDialog;->mTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    iget-object v0, p0, Lcom/powervision/home/view/DownloadDialog;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void
.end method
