.class public Lcom/powervision/media/widgets/DownloadDialog;
.super Landroid/app/Dialog;
.source "DownloadDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/media/widgets/DownloadDialog$DownloadDialogListener;
    }
.end annotation


# instance fields
.field private mClose:Landroid/widget/ImageView;

.field private mContent:Landroid/widget/TextView;

.field private mCount:I

.field private mDialogListener:Lcom/powervision/media/widgets/DownloadDialog$DownloadDialogListener;

.field private mDownManager:Lcom/powervision/localhttp/PVW4DownloadManager;

.field private mLastDownOrder:I

.field private mLastProgress:I

.field private mOrder:Landroid/widget/TextView;

.field private mPercent:Landroid/widget/TextView;

.field private mProgress:Landroid/widget/ProgressBar;

.field private mWindow:Landroid/view/Window;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 49
    invoke-direct {p0, p1, v0}, Lcom/powervision/media/widgets/DownloadDialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 p1, -0x1

    .line 46
    iput p1, p0, Lcom/powervision/media/widgets/DownloadDialog;->mLastDownOrder:I

    iput p1, p0, Lcom/powervision/media/widgets/DownloadDialog;->mLastProgress:I

    .line 60
    sget p1, Lcom/powervision/media/R$layout;->media_download_dialog:I

    invoke-virtual {p0, p1}, Lcom/powervision/media/widgets/DownloadDialog;->setContentView(I)V

    const/4 p1, 0x0

    .line 61
    invoke-virtual {p0, p1}, Lcom/powervision/media/widgets/DownloadDialog;->setCanceledOnTouchOutside(Z)V

    .line 62
    invoke-direct {p0}, Lcom/powervision/media/widgets/DownloadDialog;->init()V

    .line 63
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager$ConnectionType;->getCurrentType()I

    move-result p1

    const/4 p2, 0x2

    if-ne p2, p1, :cond_0

    .line 64
    invoke-static {}, Lcom/powervision/localhttp/PVW4DownloadAOAUtils;->get()Lcom/powervision/localhttp/PVW4DownloadAOAUtils;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/media/widgets/DownloadDialog;->mDownManager:Lcom/powervision/localhttp/PVW4DownloadManager;

    goto :goto_0

    .line 66
    :cond_0
    invoke-static {}, Lcom/powervision/localhttp/PVW4DownloadHttpUtils;->get()Lcom/powervision/localhttp/PVW4DownloadHttpUtils;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/media/widgets/DownloadDialog;->mDownManager:Lcom/powervision/localhttp/PVW4DownloadManager;

    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/powervision/media/widgets/DownloadDialog$DownloadDialogListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 53
    invoke-direct {p0, p1, v0}, Lcom/powervision/media/widgets/DownloadDialog;-><init>(Landroid/content/Context;I)V

    .line 54
    invoke-virtual {p0}, Lcom/powervision/media/widgets/DownloadDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/media/widgets/DownloadDialog;->mWindow:Landroid/view/Window;

    .line 55
    iput-object p2, p0, Lcom/powervision/media/widgets/DownloadDialog;->mDialogListener:Lcom/powervision/media/widgets/DownloadDialog$DownloadDialogListener;

    return-void
.end method

.method private init()V
    .locals 6

    .line 71
    invoke-virtual {p0}, Lcom/powervision/media/widgets/DownloadDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/media/widgets/DownloadDialog;->mWindow:Landroid/view/Window;

    .line 73
    sget v0, Lcom/powervision/media/R$id;->close:I

    invoke-virtual {p0, v0}, Lcom/powervision/media/widgets/DownloadDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/powervision/media/widgets/DownloadDialog;->mClose:Landroid/widget/ImageView;

    .line 74
    sget v0, Lcom/powervision/media/R$id;->order:I

    invoke-virtual {p0, v0}, Lcom/powervision/media/widgets/DownloadDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/powervision/media/widgets/DownloadDialog;->mOrder:Landroid/widget/TextView;

    .line 75
    sget v0, Lcom/powervision/media/R$id;->percent:I

    invoke-virtual {p0, v0}, Lcom/powervision/media/widgets/DownloadDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/powervision/media/widgets/DownloadDialog;->mPercent:Landroid/widget/TextView;

    .line 76
    sget v0, Lcom/powervision/media/R$id;->progress:I

    invoke-virtual {p0, v0}, Lcom/powervision/media/widgets/DownloadDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/powervision/media/widgets/DownloadDialog;->mProgress:Landroid/widget/ProgressBar;

    .line 77
    sget v0, Lcom/powervision/media/R$id;->content:I

    invoke-virtual {p0, v0}, Lcom/powervision/media/widgets/DownloadDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/powervision/media/widgets/DownloadDialog;->mContent:Landroid/widget/TextView;

    .line 79
    iget-object v0, p0, Lcom/powervision/media/widgets/DownloadDialog;->mClose:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    iget-object v0, p0, Lcom/powervision/media/widgets/DownloadDialog;->mWindow:Landroid/view/Window;

    if-eqz v0, :cond_1

    .line 82
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 83
    invoke-virtual {p0}, Lcom/powervision/media/widgets/DownloadDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const/4 v2, 0x1

    .line 84
    invoke-virtual {p0}, Lcom/powervision/media/widgets/DownloadDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const-wide v4, 0x3fe999999999999aL    # 0.8

    if-ne v2, v3, :cond_0

    .line 85
    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v1, v1

    mul-double v1, v1, v4

    double-to-int v1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    goto :goto_0

    .line 87
    :cond_0
    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-double v1, v1

    mul-double v1, v1, v4

    double-to-int v1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 89
    :goto_0
    iget-object v1, p0, Lcom/powervision/media/widgets/DownloadDialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_1
    return-void
.end method

.method private setProgress(I)V
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/powervision/media/widgets/DownloadDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void
.end method


# virtual methods
.method public declared-synchronized cancelDown()V
    .locals 2

    monitor-enter p0

    .line 130
    :try_start_0
    iget-object v0, p0, Lcom/powervision/media/widgets/DownloadDialog;->mDialogListener:Lcom/powervision/media/widgets/DownloadDialog$DownloadDialogListener;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/powervision/media/widgets/DownloadDialog;->mDialogListener:Lcom/powervision/media/widgets/DownloadDialog$DownloadDialogListener;

    invoke-interface {v0}, Lcom/powervision/media/widgets/DownloadDialog$DownloadDialogListener;->onCloseCallBack()V

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/powervision/media/widgets/DownloadDialog;->mDownManager:Lcom/powervision/localhttp/PVW4DownloadManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/powervision/localhttp/PVW4DownloadManager;->cancelMediaAllDownload(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 95
    invoke-static {}, Lcom/powervision/base/utils/NoFastClickUtil;->isFastClick()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 98
    :cond_0
    invoke-virtual {p0}, Lcom/powervision/media/widgets/DownloadDialog;->cancelDown()V

    return-void
.end method

.method public setCloseIsShow(Z)V
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/powervision/media/widgets/DownloadDialog;->mClose:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    .line 122
    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public setContent(I)V
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/powervision/media/widgets/DownloadDialog;->mContent:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public setOrder(I)V
    .locals 2

    .line 149
    iget v0, p0, Lcom/powervision/media/widgets/DownloadDialog;->mLastDownOrder:I

    if-eq v0, p1, :cond_0

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/powervision/media/widgets/DownloadDialog;->mCount:I

    sub-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/powervision/media/widgets/DownloadDialog;->mCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 151
    iget-object v1, p0, Lcom/powervision/media/widgets/DownloadDialog;->mOrder:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    iput p1, p0, Lcom/powervision/media/widgets/DownloadDialog;->mLastDownOrder:I

    :cond_0
    return-void
.end method

.method public setPercent(I)V
    .locals 5

    .line 157
    iget v0, p0, Lcom/powervision/media/widgets/DownloadDialog;->mLastProgress:I

    if-eq v0, p1, :cond_0

    .line 158
    iget-object v0, p0, Lcom/powervision/media/widgets/DownloadDialog;->mPercent:Landroid/widget/TextView;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "%d%%"

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    invoke-direct {p0, p1}, Lcom/powervision/media/widgets/DownloadDialog;->setProgress(I)V

    .line 160
    iput p1, p0, Lcom/powervision/media/widgets/DownloadDialog;->mLastProgress:I

    :cond_0
    return-void
.end method

.method public setValue(I)V
    .locals 1

    .line 137
    iput p1, p0, Lcom/powervision/media/widgets/DownloadDialog;->mCount:I

    const/4 v0, -0x1

    .line 138
    iput v0, p0, Lcom/powervision/media/widgets/DownloadDialog;->mLastDownOrder:I

    .line 139
    iput v0, p0, Lcom/powervision/media/widgets/DownloadDialog;->mLastProgress:I

    .line 140
    invoke-virtual {p0, p1}, Lcom/powervision/media/widgets/DownloadDialog;->setOrder(I)V

    const/4 p1, 0x0

    .line 141
    invoke-virtual {p0, p1}, Lcom/powervision/media/widgets/DownloadDialog;->setPercent(I)V

    return-void
.end method

.method public showNoBar()V
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/powervision/media/widgets/DownloadDialog;->mWindow:Landroid/view/Window;

    if-nez v0, :cond_0

    .line 106
    invoke-virtual {p0}, Lcom/powervision/media/widgets/DownloadDialog;->show()V

    goto :goto_0

    .line 108
    :cond_0
    invoke-static {v0}, Lcom/powervision/base/utils/NavigationBarUtil;->focusNotAle(Landroid/view/Window;)V

    .line 109
    invoke-virtual {p0}, Lcom/powervision/media/widgets/DownloadDialog;->show()V

    .line 110
    iget-object v0, p0, Lcom/powervision/media/widgets/DownloadDialog;->mWindow:Landroid/view/Window;

    invoke-static {v0}, Lcom/powervision/base/utils/NavigationBarUtil;->hideNavigationBar(Landroid/view/Window;)V

    .line 111
    iget-object v0, p0, Lcom/powervision/media/widgets/DownloadDialog;->mWindow:Landroid/view/Window;

    invoke-static {v0}, Lcom/powervision/base/utils/NavigationBarUtil;->clearFocusNotAle(Landroid/view/Window;)V

    :goto_0
    return-void
.end method
