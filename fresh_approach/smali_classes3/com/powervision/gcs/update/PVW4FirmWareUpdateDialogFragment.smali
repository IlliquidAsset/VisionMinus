.class public Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "PVW4FirmWareUpdateDialogFragment.java"

# interfaces
.implements Lcom/powervision/gcs/update/task/FirmwareUpdateDialogTask$View;


# static fields
.field public static final PARAM_BASE_PATH:Ljava/lang/String; = "param_base_path"

.field public static final PARAM_BODY_FILENAME:Ljava/lang/String; = "param_body_filename"

.field public static final PARAM_FILE_PATH:Ljava/lang/String; = "param_file_path"

.field public static final PARAM_RELEASE_NOTE:Ljava/lang/String; = "param_release_note"

.field public static final PARAM_UPDATE_TYPE:Ljava/lang/String; = "param_update_type"

.field public static final TYPE_BODY:I = 0x1

.field public static final TYPE_DL01:I = 0x4

.field public static final TYPE_MCU:I = 0x2

.field public static final TYPE_WIFI:I = 0x3

.field private static fs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private countDownTimer:Landroid/os/CountDownTimer;

.field private doubleBtnContaner:Landroid/widget/LinearLayout;

.field private doubleCancelBtn:Landroid/widget/TextView;

.field private doubleSureBtn:Landroid/widget/TextView;

.field private eachTime:I

.field isRemoteDl01:Z

.field private lastTime:J

.field public mBasePath:Ljava/lang/String;

.field private mFileName:Ljava/lang/String;

.field private mListener:Lcom/powervision/gcs/callback/FirmWarekUpdateListener;

.field private mPresenter:Lcom/powervision/gcs/update/presenter/PVW4FirmwareUpdateDialogPresenter;

.field private mReleaseNote:Ljava/lang/String;

.field private mUpdateType:I

.field private progrees1:Landroid/widget/ImageView;

.field private progrees2:Landroid/widget/ImageView;

.field private progrees3:Landroid/widget/ImageView;

.field private progrees4:Landroid/widget/ImageView;

.field private scrollView:Landroid/widget/ScrollView;

.field private singleCancelBtn:Landroid/widget/TextView;

.field private singleSureBtn:Landroid/widget/TextView;

.field private step1Content:Landroid/widget/TextView;

.field private step2Content:Landroid/widget/RelativeLayout;

.field private step3Content:Landroid/widget/LinearLayout;

.field private step3Title:Landroid/widget/TextView;

.field private step3_text:Landroid/widget/TextView;

.field private title:Landroid/widget/TextView;

.field private transferProgressTv:Landroid/widget/TextView;

.field private updateRemind:Landroid/widget/TextView;

.field private updateSomthingError:Z

.field zipThread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 70
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    const/4 v0, 0x0

    .line 101
    iput-boolean v0, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->updateSomthingError:Z

    const-string v1, ""

    .line 110
    iput-object v1, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->mBasePath:Ljava/lang/String;

    const/4 v1, 0x0

    .line 302
    iput-object v1, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->zipThread:Ljava/lang/Thread;

    .line 1207
    iput-boolean v0, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->isRemoteDl01:Z

    const/16 v0, 0x1f40

    .line 1209
    iput v0, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->eachTime:I

    const-wide/16 v0, 0x0

    .line 1210
    iput-wide v0, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->lastTime:J

    return-void
.end method

.method static synthetic access$000()Ljava/util/ArrayList;
    .locals 1

    .line 70
    sget-object v0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->fs:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;)Lcom/powervision/gcs/update/presenter/PVW4FirmwareUpdateDialogPresenter;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->mPresenter:Lcom/powervision/gcs/update/presenter/PVW4FirmwareUpdateDialogPresenter;

    return-object p0
.end method

.method static synthetic access$200(Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;)Landroid/widget/TextView;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->transferProgressTv:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;)V
    .locals 0

    .line 70
    invoke-direct {p0}, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->step3()V

    return-void
.end method

.method static synthetic access$400(Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;)V
    .locals 0

    .line 70
    invoke-direct {p0}, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->cancelClock()V

    return-void
.end method

.method static synthetic access$500(Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;)V
    .locals 0

    .line 70
    invoke-direct {p0}, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->step4()V

    return-void
.end method

.method static synthetic access$600(Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;)Landroid/widget/LinearLayout;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->step3Content:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$700(Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;)I
    .locals 0

    .line 70
    iget p0, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->mUpdateType:I

    return p0
.end method

.method static synthetic access$800(Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;)J
    .locals 2

    .line 70
    iget-wide v0, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->lastTime:J

    return-wide v0
.end method

.method static synthetic access$802(Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;J)J
    .locals 0

    .line 70
    iput-wide p1, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->lastTime:J

    return-wide p1
.end method

.method static synthetic access$900(Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;)I
    .locals 0

    .line 70
    iget p0, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->eachTime:I

    return p0
.end method

.method private cancelClock()V
    .locals 1

    .line 1302
    iget-object v0, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->countDownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 1303
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    :cond_0
    return-void
.end method

.method private hideAllBtns()V
    .locals 2

    .line 480
    iget-object v0, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->doubleBtnContaner:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 481
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 482
    iget-object v0, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->singleSureBtn:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 483
    iget-object v0, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->singleCancelBtn:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private hideAllStepContent()V
    .locals 2

    .line 472
    iget-object v0, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->step1Content:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 473
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 474
    iget-object v0, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->step2Content:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 475
    iget-object v0, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->step3Content:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private initListener()V
    .locals 2

    .line 237
    iget-object v0, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->doubleCancelBtn:Landroid/widget/TextView;

    new-instance v1, Lcom/powervision/gcs/update/-$$Lambda$PVW4FirmWareUpdateDialogFragment$CQHUSW1FaZyvcRpEfi3v6vKVxSs;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/update/-$$Lambda$PVW4FirmWareUpdateDialogFragment$CQHUSW1FaZyvcRpEfi3v6vKVxSs;-><init>(Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 238
    iget-object v0, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->singleCancelBtn:Landroid/widget/TextView;

    new-instance v1, Lcom/powervision/gcs/update/-$$Lambda$PVW4FirmWareUpdateDialogFragment$MPL1qZ2f_d85_AjvtnMhS1uXdGE;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/update/-$$Lambda$PVW4FirmWareUpdateDialogFragment$MPL1qZ2f_d85_AjvtnMhS1uXdGE;-><init>(Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 239
    iget-object v0, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->singleSureBtn:Landroid/widget/TextView;

    new-instance v1, Lcom/powervision/gcs/update/-$$Lambda$PVW4FirmWareUpdateDialogFragment$HG5w8mrJm5VDPnM61fbRcEvj4RU;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/update/-$$Lambda$PVW4FirmWareUpdateDialogFragment$HG5w8mrJm5VDPnM61fbRcEvj4RU;-><init>(Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 240
    iget-object v0, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->doubleSureBtn:Landroid/widget/TextView;

    new-instance v1, Lcom/powervision/gcs/update/-$$Lambda$PVW4FirmWareUpdateDialogFragment$2fHq646wZfKXr8hoU7H14M6DN5s;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/update/-$$Lambda$PVW4FirmWareUpdateDialogFragment$2fHq646wZfKXr8hoU7H14M6DN5s;-><init>(Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static newInstance(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/io/File;",
            ">;)",
            "Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;"
        }
    .end annotation

    .line 118
    new-instance v0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;

    invoke-direct {v0}, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;-><init>()V

    .line 119
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "param_release_note"

    .line 120
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "param_update_type"

    .line 122
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "param_base_path"

    .line 123
    invoke-virtual {v1, p0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "param_body_filename"

    .line 124
    invoke-virtual {v1, p0, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p4, :cond_0

    .line 126
    invoke-virtual {p4}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    sput-object p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->fs:Ljava/util/ArrayList;

    .line 128
    :cond_0
    invoke-virtual {v0, v1}, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private showDoubleBtn()V
    .locals 2

    .line 496
    iget-object v0, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->doubleBtnContaner:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method private showSingleCancelBtn()V
    .locals 2

    .line 488
    iget-object v0, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->singleCancelBtn:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private showSingleSureBtn()V
    .locals 2

    .line 492
    iget-object v0, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->singleSureBtn:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private step1()V
    .locals 2

    .line 349
    invoke-direct {p0}, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->hideAllBtns()V

    .line 350
    invoke-direct {p0}, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->showDoubleBtn()V

    .line 351
    iget-object v0, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->mReleaseNote:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->step1Content:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->mReleaseNote:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 354
    :cond_0
    iget-object v0, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->step1Content:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 355
    iget-object v0, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->progrees1:Landroid/widget/ImageView;

    sget v1, Lcom/powervision/gcs/R$mipmap;->firmware_update_1s:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 356
    iget-object v0, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->scrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/high16 v1, 0x43a00000    # 320.0f

    .line 357
    invoke-static {v1}, Lcom/powervision/gcs/utils/Utils;->dipToPx(F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v1, -0x2

    .line 358
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 359
    iget-object v1, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->scrollView:Landroid/widget/ScrollView;

    invoke-virtual {v1, v0}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private step2()V
    .locals 3

    .line 363
    invoke-direct {p0}, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->hideAllBtns()V

    .line 364
    invoke-direct {p0}, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->showSingleCancelBtn()V

    .line 366
    iget-object v0, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->step1Content:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 367
    iget-object v0, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->step2Content:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 368
    iget-object v0, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->singleCancelBtn:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 369
    iget-object v0, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->singleSureBtn:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 370
    iget-object v0, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->doubleBtnContaner:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 371
    iget-object v0, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->progrees2:Landroid/widget/ImageView;

    sget v1, Lcom/powervision/gcs/R$mipmap;->firmware_update_2s:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 372
    iget v0, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->mUpdateType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 373
    iget-object v0, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->title:Landroid/widget/TextView;

    sget v1, Lcom/powervision/gcs/R$string;->Upgrade_40:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 376
    :cond_0
    iget-object v0, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->title:Landroid/widget/TextView;

    sget v1, Lcom/powervision/gcs/R$string;->Upgrade_42:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    return-void
.end method

.method private step3()V
    .locals 3

    .line 381
    iget-object v0, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->step2Content:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 382
    iget-object v0, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->step3Content:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 383
    iget-object v0, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->progrees3:Landroid/widget/ImageView;

    sget v2, Lcom/powervision/gcs/R$mipmap;->firmware_update_3s:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 391
    iget v0, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->mUpdateType:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 392
    iget-object v0, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->title:Landroid/widget/TextView;

    sget v2, Lcom/powervision/gcs/R$string;->Upgrade_47:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 393
    iget-object v0, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->step3_text:Landroid/widget/TextView;

    sget v2, Lcom/powervision/gcs/R$string;->Upgrade_76:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    .line 395
    iget-object v0, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->title:Landroid/widget/TextView;

    sget v2, Lcom/powervision/gcs/R$string;->Upgrade_47:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 396
    iget-object v0, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->step3_text:Landroid/widget/TextView;

    sget v2, Lcom/powervision/gcs/R$string;->Upgrade_83:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x4

    if-ne v0, v2, :cond_2

    .line 398
    iget-object v0, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->title:Landroid/widget/TextView;

    sget v2, Lcom/powervision/gcs/R$string;->Upgrade_47:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 399
    iget-object v0, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->step3_text:Landroid/widget/TextView;

    sget v2, Lcom/powervision/gcs/R$string;->Upgrade_90:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 401
    :cond_2
    iget-object v0, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->title:Landroid/widget/TextView;

    sget v2, Lcom/powervision/gcs/R$string;->Upgrade_45:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 402
    iget-object v0, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->step3_text:Landroid/widget/TextView;

    sget v2, Lcom/powervision/gcs/R$string;->Upgrade_96:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 404
    :goto_0
    iget-object v0, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->singleCancelBtn:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 405
    iget-object v0, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->singleSureBtn:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 406
    iget-object v0, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->doubleBtnContaner:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 407
    iget-object v0, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->scrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/high16 v1, 0x43a00000    # 320.0f

    .line 408
    invoke-static {v1}, Lcom/powervision/gcs/utils/Utils;->dipToPx(F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/high16 v1, 0x43160000    # 150.0f

    .line 409
    invoke-static {v1}, Lcom/powervision/gcs/utils/Utils;->dipToPx(F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 410
    iget-object v1, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->scrollView:Landroid/widget/ScrollView;

    invoke-virtual {v1, v0}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private step4()V
    .locals 6

    .line 414
    iget v0, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->mUpdateType:I

    const/4 v1, 0x4

    const/4 v2, 0x2

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-eq v0, v4, :cond_3

    if-eq v0, v2, :cond_2

    if-eq v0, v3, :cond_1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 430
    :cond_0
    invoke-static {}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->getInstance()Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->updateDl01Over()V

    goto :goto_0

    .line 426
    :cond_1
    invoke-static {}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->getInstance()Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->updateWifiOver()V

    goto :goto_0

    .line 421
    :cond_2
    invoke-static {}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->getInstance()Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->updateMcuOver()V

    goto :goto_0

    .line 416
    :cond_3
    invoke-static {}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->getInstance()Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->updateBodyOver()V

    .line 433
    :goto_0
    invoke-direct {p0}, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->hideAllBtns()V

    .line 434
    invoke-direct {p0}, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->showSingleSureBtn()V

    .line 435
    iget-object v0, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->step3Content:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_9

    const/16 v5, 0x8

    .line 436
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 438
    iget-object v0, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->progrees4:Landroid/widget/ImageView;

    sget v5, Lcom/powervision/gcs/R$mipmap;->firmware_update_4s:I

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 439
    iget-object v0, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->title:Landroid/widget/TextView;

    sget v5, Lcom/powervision/gcs/R$string;->gcs_update_ship_firmware_data_complete:I

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    .line 440
    iget-object v0, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->scrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/high16 v5, 0x43a00000    # 320.0f

    .line 441
    invoke-static {v5}, Lcom/powervision/gcs/utils/Utils;->dipToPx(F)I

    move-result v5

    iput v5, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v5, -0x2

    .line 442
    iput v5, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 443
    iget-object v5, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->scrollView:Landroid/widget/ScrollView;

    invoke-virtual {v5, v0}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 444
    iget-object v0, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->updateRemind:Landroid/widget/TextView;

    const/high16 v5, 0x41200000    # 10.0f

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 445
    invoke-static {}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->getInstance()Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->hideRedNotify()V

    .line 446
    iget v0, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->mUpdateType:I

    if-ne v0, v4, :cond_4

    .line 447
    invoke-static {}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->getInstance()Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->initBody()V

    goto :goto_1

    .line 449
    :cond_4
    invoke-static {}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->getInstance()Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->initRemote(I)V

    .line 451
    :goto_1
    iget-object v0, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->mListener:Lcom/powervision/gcs/callback/FirmWarekUpdateListener;

    invoke-interface {v0, v4}, Lcom/powervision/gcs/callback/FirmWarekUpdateListener;->onUpdateSucceed(I)V

    .line 453
    iget-boolean v0, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->updateSomthingError:Z

    if-eqz v0, :cond_5

    .line 454
    iget-object v0, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->updateRemind:Landroid/widget/TextView;

    sget v1, Lcom/powervision/gcs/R$string;->Upgrade_101:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 457
    :cond_5
    iget v0, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->mUpdateType:I

    if-ne v0, v2, :cond_6

    .line 458
    iget-object v0, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->updateRemind:Landroid/widget/TextView;

    sget v1, Lcom/powervision/gcs/R$string;->pvw4_update_complete_mcu:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    :cond_6
    if-ne v0, v3, :cond_7

    .line 460
    iget-object v0, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->updateRemind:Landroid/widget/TextView;

    sget v1, Lcom/powervision/gcs/R$string;->pvw4_update_complete_wifi:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    :cond_7
    if-ne v0, v1, :cond_8

    .line 462
    iget-object v0, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->updateRemind:Landroid/widget/TextView;

    sget v1, Lcom/powervision/gcs/R$string;->pvw4_update_completet_dl01:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 464
    :cond_8
    iget-object v0, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->updateRemind:Landroid/widget/TextView;

    sget v1, Lcom/powervision/gcs/R$string;->Upgrade_96:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_9
    :goto_2
    return-void
.end method

.method private update9342()V
    .locals 6

    .line 275
    invoke-static {}, Lcom/powervision/natives/connect/W49342ConnectSdk;->get()Lcom/powervision/natives/connect/W49342ConnectSdk;

    move-result-object v0

    iget v0, v0, Lcom/powervision/natives/connect/W49342ConnectSdk;->connectStatus:I

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->mListener:Lcom/powervision/gcs/callback/FirmWarekUpdateListener;

    if-eqz v0, :cond_0

    const/16 v1, 0xf

    const/16 v2, 0x12c

    .line 277
    invoke-interface {v0, v1, v2}, Lcom/powervision/gcs/callback/FirmWarekUpdateListener;->onUpdateFailed(II)V

    .line 281
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->mBasePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$State;->SHIP_WIFI_REMOTE_FIRMWARE_1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 282
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->mBasePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$State;->SHIP_WIFI_REMOTE_FIRMWARE_2:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 283
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->mBasePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$State;->SHIP_WIFI_REMOTE_MD5:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 284
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "filePath1:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "  file2:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "lzq9342"

    invoke-static {v4, v3}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "md5:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    iget-object v3, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->mPresenter:Lcom/powervision/gcs/update/presenter/PVW4FirmwareUpdateDialogPresenter;

    invoke-virtual {v3, v0, v1, v2}, Lcom/powervision/gcs/update/presenter/PVW4FirmwareUpdateDialogPresenter;->updateRemoteWifi9342Firmware(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private updateBodyFirmware()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 307
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateBodyFirmware:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    sget-object v2, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->fs:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lzqW4_Firm_body"

    invoke-static {v1, v0}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment$1;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment$1;-><init>(Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->zipThread:Ljava/lang/Thread;

    .line 337
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private updateShipRemoteDL01Firmware()V
    .locals 3

    .line 1058
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->mBasePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$State;->DL01_FILE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1059
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateShipRemoteDL01Firmware: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  md5 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$State;->remoteDl01Md5:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "lzqW4_firm_dl01"

    invoke-static {v2, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1061
    :try_start_0
    iget-object v1, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->mPresenter:Lcom/powervision/gcs/update/presenter/PVW4FirmwareUpdateDialogPresenter;

    sget-object v2, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$State;->remoteDl01Md5:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/powervision/gcs/update/presenter/PVW4FirmwareUpdateDialogPresenter;->updateRemoteDl01Firmware(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1063
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1064
    iget-object v0, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->mListener:Lcom/powervision/gcs/callback/FirmWarekUpdateListener;

    const/16 v1, 0x8

    const/16 v2, 0x1fa

    invoke-interface {v0, v1, v2}, Lcom/powervision/gcs/callback/FirmWarekUpdateListener;->onUpdateFailed(II)V

    .line 1065
    iget-object v0, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->transferProgressTv:Landroid/widget/TextView;

    new-instance v1, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment$39;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment$39;-><init>(Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method private updateShipRemoteMCUFirmware()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->mBasePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$State;->MCU_FILE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 297
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "filePath "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "lzqW4_Firm_MCU"

    invoke-static {v2, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    iget-object v1, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->mPresenter:Lcom/powervision/gcs/update/presenter/PVW4FirmwareUpdateDialogPresenter;

    invoke-virtual {v1, v0}, Lcom/powervision/gcs/update/presenter/PVW4FirmwareUpdateDialogPresenter;->updateRemoteMt03Firmware(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public dolphinRemote9342Update(II)V
    .locals 2

    .line 707
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "9342\u5347\u7ea7 state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "   progress: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lzqW4_firm_9342"

    invoke-static {v1, v0}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const/16 v0, 0x8

    const/4 v1, 0x2

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 720
    :pswitch_0
    iget-object p1, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->transferProgressTv:Landroid/widget/TextView;

    new-instance v0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment$11;

    invoke-direct {v0, p0, p2}, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment$11;-><init>(Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;I)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 811
    :pswitch_1
    iget-object p1, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->mListener:Lcom/powervision/gcs/callback/FirmWarekUpdateListener;

    const/16 p2, 0x131

    invoke-interface {p1, v1, p2}, Lcom/powervision/gcs/callback/FirmWarekUpdateListener;->onUpdateFailed(II)V

    .line 812
    iget-object p1, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->transferProgressTv:Landroid/widget/TextView;

    new-instance p2, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment$19;

    invoke-direct {p2, p0}, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment$19;-><init>(Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 819
    :pswitch_2
    iget-object p1, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->mListener:Lcom/powervision/gcs/callback/FirmWarekUpdateListener;

    const/16 p2, 0x132

    invoke-interface {p1, v1, p2}, Lcom/powervision/gcs/callback/FirmWarekUpdateListener;->onUpdateFailed(II)V

    .line 820
    iget-object p1, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->transferProgressTv:Landroid/widget/TextView;

    new-instance p2, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment$20;

    invoke-direct {p2, p0}, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment$20;-><init>(Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 800
    :pswitch_3
    iget-object p1, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->mListener:Lcom/powervision/gcs/callback/FirmWarekUpdateListener;

    const/4 p2, 0x1

    const/16 v0, 0x130

    invoke-interface {p1, p2, v0}, Lcom/powervision/gcs/callback/FirmWarekUpdateListener;->onUpdateFailed(II)V

    .line 801
    iget-object p1, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->transferProgressTv:Landroid/widget/TextView;

    new-instance p2, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment$18;

    invoke-direct {p2, p0}, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment$18;-><init>(Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 789
    :pswitch_4
    iget-object p1, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->mListener:Lcom/powervision/gcs/callback/FirmWarekUpdateListener;

    const/16 p2, 0x12f

    invoke-interface {p1, v0, p2}, Lcom/powervision/gcs/callback/FirmWarekUpdateListener;->onUpdateFailed(II)V

    .line 790
    iget-object p1, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->transferProgressTv:Landroid/widget/TextView;

    new-instance p2, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment$17;

    invoke-direct {p2, p0}, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment$17;-><init>(Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 778
    :pswitch_5
    iget-object p1, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->mListener:Lcom/powervision/gcs/callback/FirmWarekUpdateListener;

    const/16 p2, 0x12e

    invoke-interface {p1, v0, p2}, Lcom/powervision/gcs/callback/FirmWarekUpdateListener;->onUpdateFailed(II)V

    .line 779
    iget-object p1, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->transferProgressTv:Landroid/widget/TextView;

    new-instance p2, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment$16;

    invoke-direct {p2, p0}, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment$16;-><init>(Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 768
    :pswitch_6
    iget-object p1, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->transferProgressTv:Landroid/widget/TextView;

    new-instance p2, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment$15;

    invoke-direct {p2, p0}, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment$15;-><init>(Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 756
    :pswitch_7
    iget-object p1, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->mListener:Lcom/powervision/gcs/callback/FirmWarekUpdateListener;

    const/16 p2, 0xf

    const/16 v0, 0x12d

    invoke-interface {p1, p2, v0}, Lcom/powervision/gcs/callback/FirmWarekUpdateListener;->onUpdateFailed(II)V

    .line 757
    iget-object p1, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->transferProgressTv:Landroid/widget/TextView;

    new-instance p2, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment$14;

    invoke-direct {p2, p0}, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment$14;-><init>(Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 746
    :pswitch_8
    iget-object p1, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->step3Content:Landroid/widget/LinearLayout;

    new-instance p2, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment$13;

    invoke-direct {p2, p0}, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment$13;-><init>(Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 735
    :pswitch_9
    iget-object p1, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->step3Content:Landroid/widget/LinearLayout;

    new-instance p2, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment$12;

    invoke-direct {p2, p0}, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment$12;-><init>(Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 712
    :cond_0
    iget-object p1, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->transferProgressTv:Landroid/widget/TextView;

    new-instance p2, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment$10;

    invoke-direct {p2, p0}, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment$10;-><init>(Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public dolphinRemoteDl01UploadState(II)V
    .locals 2

    const/4 v0, 0x1

    const-string v1, "lzqW4_firm_dl01"

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    const-string p1, "\u6821\u9a8c\u6210\u529f"

    .line 1160
    invoke-static {v1, p1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1161
    iget-object p1, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->transferProgressTv:Landroid/widget/TextView;

    new-instance p2, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment$47;

    invoke-direct {p2, p0}, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment$47;-><init>(Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 1170
    :pswitch_1
    iget-object p1, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->transferProgressTv:Landroid/widget/TextView;

    new-instance p2, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment$48;

    invoke-direct {p2, p0}, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment$48;-><init>(Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    const-string p1, "\u53d1\u9001\u6570\u636e\u5b8c\u6210"

    .line 1177
    invoke-static {v1, p1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1103
    :pswitch_2
    iget-object p1, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->transferProgressTv:Landroid/widget/TextView;

    new-instance v0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment$42;

    invoke-direct {v0, p0, p2}, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment$42;-><init>(Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;I)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :pswitch_3
    const-string p1, "ftp\u5efa\u7acb\u6210\u529f"

    .line 1180
    invoke-static {v1, p1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_4
    const-string p1, "\u6821\u9a8c\u5931\u8d25"

    .line 1147
    invoke-static {v1, p1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1148
    iget-object p1, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->mListener:Lcom/powervision/gcs/callback/FirmWarekUpdateListener;

    const/4 p2, 0x2

    const/16 v0, 0x25e

    invoke-interface {p1, p2, v0}, Lcom/powervision/gcs/callback/FirmWarekUpdateListener;->onUpdateFailed(II)V

    .line 1150
    iget-object p1, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->transferProgressTv:Landroid/widget/TextView;

    new-instance p2, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment$46;

    invoke-direct {p2, p0}, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment$46;-><init>(Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1136
    :pswitch_5
    iget-object p1, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->mListener:Lcom/powervision/gcs/callback/FirmWarekUpdateListener;

    const/16 p2, 0x25d

    invoke-interface {p1, v0, p2}, Lcom/powervision/gcs/callback/FirmWarekUpdateListener;->onUpdateFailed(II)V

    const-string p1, "\u53d1\u9001\u5931\u8d25"

    .line 1137
    invoke-static {v1, p1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1138
    iget-object p1, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->transferProgressTv:Landroid/widget/TextView;

    new-instance p2, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment$45;

    invoke-direct {p2, p0}, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment$45;-><init>(Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :pswitch_6
    const-string p1, "\u6253\u5f00\u6587\u4ef6\u5931\u8d25"

    .line 1123
    invoke-static {v1, p1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1125
    iget-object p1, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->mListener:Lcom/powervision/gcs/callback/FirmWarekUpdateListener;

    const/16 p2, 0x25c

    invoke-interface {p1, v0, p2}, Lcom/powervision/gcs/callback/FirmWarekUpdateListener;->onUpdateFailed(II)V

    .line 1126
    iget-object p1, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->transferProgressTv:Landroid/widget/TextView;

    new-instance p2, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment$44;

    invoke-direct {p2, p0}, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment$44;-><init>(Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :pswitch_7
    const-string p1, "Ftp\u8fde\u63a5\u5f02\u5e38"

    .line 1112
    invoke-static {v1, p1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1113
    iget-object p1, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->mListener:Lcom/powervision/gcs/callback/FirmWarekUpdateListener;

    const/16 p2, 0x25b

    invoke-interface {p1, v0, p2}, Lcom/powervision/gcs/callback/FirmWarekUpdateListener;->onUpdateFailed(II)V

    .line 1114
    iget-object p1, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->transferProgressTv:Landroid/widget/TextView;

    new-instance p2, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment$43;

    invoke-direct {p2, p0}, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment$43;-><init>(Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :pswitch_8
    const-string p1, "\u94fe\u63a5ftp\u670d\u52a1\u7aef\u5931\u8d25"

    .line 1091
    invoke-static {v1, p1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1093
    iget-object p1, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->mListener:Lcom/powervision/gcs/callback/FirmWarekUpdateListener;

    const/16 p2, 0x25a

    invoke-interface {p1, v0, p2}, Lcom/powervision/gcs/callback/FirmWarekUpdateListener;->onUpdateFailed(II)V

    .line 1094
    iget-object p1, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->transferProgressTv:Landroid/widget/TextView;

    new-instance p2, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment$41;

    invoke-direct {p2, p0}, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment$41;-><init>(Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :pswitch_9
    const-string p1, "AT\u6307\u4ee4\u5931\u8d25"

    .line 1078
    invoke-static {v1, p1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1080
    iget-object p1, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->mListener:Lcom/powervision/gcs/callback/FirmWarekUpdateListener;

    const/16 p2, 0x259

    invoke-interface {p1, v0, p2}, Lcom/powervision/gcs/callback/FirmWarekUpdateListener;->onUpdateFailed(II)V

    .line 1081
    iget-object p1, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->transferProgressTv:Landroid/widget/TextView;

    new-instance p2, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment$40;

    invoke-direct {p2, p0}, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment$40;-><init>(Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public dolphinUpdata(IILjava/lang/String;)V
    .locals 4

    .line 507
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u8239\u4f53\u5347\u7ea7 : status:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " progress:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "lzqW4Firm"

    invoke-static {v0, p3}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sput-wide v1, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->dophine_current_time:J

    const/16 p3, 0xd3

    const/4 v1, 0x1

    const/16 v2, 0x8

    const-string v3, "lzqW4_Firm_body"

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    const-string p1, "INTEGRATION_UPGRADE_STATUS_DEVICE_INSTALL_COMPLETE "

    .line 630
    invoke-static {v3, p1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    sget-boolean p1, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$State;->hasDl01:Z

    if-nez p1, :cond_0

    .line 633
    iget-object p1, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->step3Content:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment$8;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment$8;-><init>(Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    :pswitch_1
    const-string p1, "INTEGRATION_UPGRADE_STATUS_DEVICE_INSTALL_ERROR "

    .line 645
    invoke-static {v3, p1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 646
    iget-object p1, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->mListener:Lcom/powervision/gcs/callback/FirmWarekUpdateListener;

    const/16 v0, 0x9

    const/16 v3, 0xcc

    invoke-interface {p1, v0, v3}, Lcom/powervision/gcs/callback/FirmWarekUpdateListener;->onUpdateFailed(II)V

    .line 647
    iget-object p1, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->step3Content:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment$9;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment$9;-><init>(Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    :pswitch_2
    const-string p1, "INTEGRATION_UPGRADE_STATUS_DEVICE_DL01_INSTALLING "

    .line 642
    invoke-static {v3, p1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_3
    const-string p1, "INTEGRATION_UPGRADE_STATUS_DEVICE_INSTALLING "

    .line 623
    invoke-static {v3, p1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_4
    const-string p1, "INTEGRATION_UPGRADE_STATUS_UNZIP_FALIED "

    .line 607
    invoke-static {v3, p1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    iget-object p1, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->mListener:Lcom/powervision/gcs/callback/FirmWarekUpdateListener;

    invoke-interface {p1, v2, p3}, Lcom/powervision/gcs/callback/FirmWarekUpdateListener;->onUpdateFailed(II)V

    .line 613
    iget-object p1, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->step3Content:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment$7;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment$7;-><init>(Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :pswitch_5
    const-string p1, "INTEGRATION_UPGRADE_STATUS_UNZIP_SUCCESS "

    .line 601
    invoke-static {v3, p1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_6
    const-string p1, "INTEGRATION_UPGRADE_STATUS_UNZIP_START "

    .line 656
    invoke-static {v3, p1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_7
    const-string p1, "MD5\u6821\u9a8c\u5931\u8d25 "

    .line 589
    invoke-static {v3, p1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    iget-object p1, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->mListener:Lcom/powervision/gcs/callback/FirmWarekUpdateListener;

    invoke-interface {p1, v2, p3}, Lcom/powervision/gcs/callback/FirmWarekUpdateListener;->onUpdateFailed(II)V

    .line 592
    iget-object p1, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->step3Content:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment$6;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment$6;-><init>(Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :pswitch_8
    const-string p1, "MD5\u6821\u9a8c\u6210\u529f "

    .line 570
    invoke-static {v3, p1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    iget-object p1, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->step3Content:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment$5;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment$5;-><init>(Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 557
    :pswitch_9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u8fdb\u5ea6 "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    iget-object p1, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->step3Content:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment$4;

    invoke-direct {v0, p0, p2}, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment$4;-><init>(Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;I)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :pswitch_a
    const-string p1, "\u5347\u7ea7\u63a8\u9001\u6570\u636e\u5931\u8d25 "

    .line 544
    invoke-static {v0, p1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    iget-object p1, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->mListener:Lcom/powervision/gcs/callback/FirmWarekUpdateListener;

    const/16 v0, 0xca

    invoke-interface {p1, v2, v0}, Lcom/powervision/gcs/callback/FirmWarekUpdateListener;->onUpdateFailed(II)V

    .line 546
    iget-object p1, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->step3Content:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment$3;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment$3;-><init>(Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :pswitch_b
    const-string p1, "\u5347\u7ea7\u63a8\u9001\u6570\u636e\u6210\u529f "

    .line 537
    invoke-static {v0, p1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 523
    :pswitch_c
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5347\u7ea7\u6307\u4ee4\u4ea4\u4e92\u5931\u8d25 "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    iget-object p1, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->mListener:Lcom/powervision/gcs/callback/FirmWarekUpdateListener;

    const/16 v0, 0xc9

    invoke-interface {p1, v2, v0}, Lcom/powervision/gcs/callback/FirmWarekUpdateListener;->onUpdateFailed(II)V

    .line 525
    iget-object p1, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->step3Content:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment$2;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment$2;-><init>(Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    :goto_0
    const/4 p1, 0x1

    goto :goto_2

    :pswitch_d
    const-string p1, "\u5347\u7ea7\u6307\u4ee4\u4ea4\u4e92\u6210\u529f "

    .line 516
    invoke-static {v0, p1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_1
    const/4 p1, 0x0

    :goto_2
    if-eqz p1, :cond_1

    packed-switch p2, :pswitch_data_1

    goto :goto_3

    .line 697
    :pswitch_e
    iget-object p1, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->mPresenter:Lcom/powervision/gcs/update/presenter/PVW4FirmwareUpdateDialogPresenter;

    invoke-virtual {p1}, Lcom/powervision/gcs/update/presenter/PVW4FirmwareUpdateDialogPresenter;->updateover()V

    .line 698
    iget-object p1, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->mListener:Lcom/powervision/gcs/callback/FirmWarekUpdateListener;

    invoke-interface {p1, v2, p3}, Lcom/powervision/gcs/callback/FirmWarekUpdateListener;->onUpdateFailed(II)V

    goto :goto_3

    .line 689
    :pswitch_f
    iput-boolean v1, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->updateSomthingError:Z

    .line 690
    iget-object p1, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->mListener:Lcom/powervision/gcs/callback/FirmWarekUpdateListener;

    const/16 p2, 0xd2

    invoke-interface {p1, v2, p2}, Lcom/powervision/gcs/callback/FirmWarekUpdateListener;->onUpdateFailed(II)V

    .line 691
    iget-object p1, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->mPresenter:Lcom/powervision/gcs/update/presenter/PVW4FirmwareUpdateDialogPresenter;

    invoke-virtual {p1}, Lcom/powervision/gcs/update/presenter/PVW4FirmwareUpdateDialogPresenter;->updateover()V

    goto :goto_3

    .line 682
    :pswitch_10
    iget-object p1, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->mListener:Lcom/powervision/gcs/callback/FirmWarekUpdateListener;

    const/16 p2, 0x191

    const/16 p3, 0xd1

    invoke-interface {p1, p2, p3}, Lcom/powervision/gcs/callback/FirmWarekUpdateListener;->onUpdateFailed(II)V

    .line 683
    iget-object p1, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->mPresenter:Lcom/powervision/gcs/update/presenter/PVW4FirmwareUpdateDialogPresenter;

    invoke-virtual {p1}, Lcom/powervision/gcs/update/presenter/PVW4FirmwareUpdateDialogPresenter;->updateover()V

    goto :goto_3

    .line 678
    :pswitch_11
    iget-object p1, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->mListener:Lcom/powervision/gcs/callback/FirmWarekUpdateListener;

    const/16 p2, 0xd0

    invoke-interface {p1, v2, p2}, Lcom/powervision/gcs/callback/FirmWarekUpdateListener;->onUpdateFailed(II)V

    .line 679
    iget-object p1, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->mPresenter:Lcom/powervision/gcs/update/presenter/PVW4FirmwareUpdateDialogPresenter;

    invoke-virtual {p1}, Lcom/powervision/gcs/update/presenter/PVW4FirmwareUpdateDialogPresenter;->updateover()V

    goto :goto_3

    .line 674
    :pswitch_12
    iget-object p1, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->mListener:Lcom/powervision/gcs/callback/FirmWarekUpdateListener;

    const/16 p2, 0xcf

    invoke-interface {p1, v2, p2}, Lcom/powervision/gcs/callback/FirmWarekUpdateListener;->onUpdateFailed(II)V

    .line 675
    iget-object p1, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->mPresenter:Lcom/powervision/gcs/update/presenter/PVW4FirmwareUpdateDialogPresenter;

    invoke-virtual {p1}, Lcom/powervision/gcs/update/presenter/PVW4FirmwareUpdateDialogPresenter;->updateover()V

    goto :goto_3

    .line 669
    :pswitch_13
    iget-object p1, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->mListener:Lcom/powervision/gcs/callback/FirmWarekUpdateListener;

    const/16 p2, 0xce

    invoke-interface {p1, v1, p2}, Lcom/powervision/gcs/callback/FirmWarekUpdateListener;->onUpdateFailed(II)V

    .line 670
    iget-object p1, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->mPresenter:Lcom/powervision/gcs/update/presenter/PVW4FirmwareUpdateDialogPresenter;

    invoke-virtual {p1}, Lcom/powervision/gcs/update/presenter/PVW4FirmwareUpdateDialogPresenter;->updateover()V

    goto :goto_3

    .line 665
    :pswitch_14
    iget-object p1, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->mListener:Lcom/powervision/gcs/callback/FirmWarekUpdateListener;

    const/16 p2, 0xcd

    invoke-interface {p1, v1, p2}, Lcom/powervision/gcs/callback/FirmWarekUpdateListener;->onUpdateFailed(II)V

    .line 666
    iget-object p1, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->mPresenter:Lcom/powervision/gcs/update/presenter/PVW4FirmwareUpdateDialogPresenter;

    invoke-virtual {p1}, Lcom/powervision/gcs/update/presenter/PVW4FirmwareUpdateDialogPresenter;->updateover()V

    :cond_1
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
    .end packed-switch
.end method

.method public synthetic lambda$initListener$0$PVW4FirmWareUpdateDialogFragment(Landroid/view/View;)V
    .locals 0

    .line 237
    invoke-virtual {p0}, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->dismissAllowingStateLoss()V

    return-void
.end method

.method public synthetic lambda$initListener$1$PVW4FirmWareUpdateDialogFragment(Landroid/view/View;)V
    .locals 0

    .line 238
    invoke-virtual {p0}, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->dismissAllowingStateLoss()V

    return-void
.end method

.method public synthetic lambda$initListener$2$PVW4FirmWareUpdateDialogFragment(Landroid/view/View;)V
    .locals 0

    .line 239
    invoke-virtual {p0}, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->dismissAllowingStateLoss()V

    return-void
.end method

.method public synthetic lambda$initListener$3$PVW4FirmWareUpdateDialogFragment(Landroid/view/View;)V
    .locals 1

    .line 241
    invoke-direct {p0}, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->step2()V

    .line 243
    :try_start_0
    iget p1, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->mUpdateType:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 261
    :cond_0
    invoke-direct {p0}, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->updateShipRemoteDL01Firmware()V

    goto :goto_0

    .line 255
    :cond_1
    invoke-direct {p0}, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->update9342()V

    goto :goto_0

    .line 250
    :cond_2
    invoke-direct {p0}, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->updateShipRemoteMCUFirmware()V

    goto :goto_0

    .line 245
    :cond_3
    invoke-direct {p0}, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->updateBodyFirmware()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 265
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public mcu_AUpgradeStatus(II)V
    .locals 4

    .line 837
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  progress:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lzqW4_firm_MCU"

    invoke-static {v1, v0}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    const-string v1, "UP"

    const/16 v2, 0xf

    const/4 v3, 0x1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 942
    :pswitch_0
    invoke-static {v2, v1, v3}, Lcom/powervision/natives/JniDl01Native;->setGetOperation(ILjava/lang/String;I)I

    .line 943
    iget-object p1, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->mListener:Lcom/powervision/gcs/callback/FirmWarekUpdateListener;

    const/16 p2, 0x197

    invoke-interface {p1, v0, p2}, Lcom/powervision/gcs/callback/FirmWarekUpdateListener;->onUpdateFailed(II)V

    .line 944
    iget-object p1, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->transferProgressTv:Landroid/widget/TextView;

    new-instance p2, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment$30;

    invoke-direct {p2, p0}, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment$30;-><init>(Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 926
    :pswitch_1
    invoke-static {v2, v1, v3}, Lcom/powervision/natives/JniDl01Native;->setGetOperation(ILjava/lang/String;I)I

    .line 927
    iget-object p1, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->transferProgressTv:Landroid/widget/TextView;

    new-instance p2, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment$28;

    invoke-direct {p2, p0}, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment$28;-><init>(Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 934
    iget-object p1, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->transferProgressTv:Landroid/widget/TextView;

    new-instance p2, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment$29;

    invoke-direct {p2, p0}, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment$29;-><init>(Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;)V

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, p2, v0, v1}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 915
    :pswitch_2
    invoke-static {v2, v1, v3}, Lcom/powervision/natives/JniDl01Native;->setGetOperation(ILjava/lang/String;I)I

    goto/16 :goto_0

    .line 874
    :pswitch_3
    iget-object p1, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->transferProgressTv:Landroid/widget/TextView;

    new-instance p2, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment$24;

    invoke-direct {p2, p0}, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment$24;-><init>(Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 907
    :pswitch_4
    iget-object p1, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->transferProgressTv:Landroid/widget/TextView;

    new-instance v0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment$27;

    invoke-direct {v0, p0, p2}, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment$27;-><init>(Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;I)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 896
    :pswitch_5
    invoke-static {v2, v1, v3}, Lcom/powervision/natives/JniDl01Native;->setGetOperation(ILjava/lang/String;I)I

    .line 897
    iget-object p1, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->mListener:Lcom/powervision/gcs/callback/FirmWarekUpdateListener;

    const/16 p2, 0x8

    const/16 v0, 0x195

    invoke-interface {p1, p2, v0}, Lcom/powervision/gcs/callback/FirmWarekUpdateListener;->onUpdateFailed(II)V

    .line 898
    iget-object p1, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->transferProgressTv:Landroid/widget/TextView;

    new-instance p2, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment$26;

    invoke-direct {p2, p0}, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment$26;-><init>(Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 885
    :pswitch_6
    invoke-static {v2, v1, v3}, Lcom/powervision/natives/JniDl01Native;->setGetOperation(ILjava/lang/String;I)I

    .line 886
    iget-object p1, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->mListener:Lcom/powervision/gcs/callback/FirmWarekUpdateListener;

    const/16 p2, 0x194

    invoke-interface {p1, v3, p2}, Lcom/powervision/gcs/callback/FirmWarekUpdateListener;->onUpdateFailed(II)V

    .line 887
    iget-object p1, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->transferProgressTv:Landroid/widget/TextView;

    new-instance p2, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment$25;

    invoke-direct {p2, p0}, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment$25;-><init>(Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 862
    :pswitch_7
    invoke-static {v2, v1, v3}, Lcom/powervision/natives/JniDl01Native;->setGetOperation(ILjava/lang/String;I)I

    .line 863
    iget-object p1, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->mListener:Lcom/powervision/gcs/callback/FirmWarekUpdateListener;

    const/16 p2, 0x193

    invoke-interface {p1, v3, p2}, Lcom/powervision/gcs/callback/FirmWarekUpdateListener;->onUpdateFailed(II)V

    .line 864
    iget-object p1, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->transferProgressTv:Landroid/widget/TextView;

    new-instance p2, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment$23;

    invoke-direct {p2, p0}, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment$23;-><init>(Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 851
    :pswitch_8
    invoke-static {v2, v1, v3}, Lcom/powervision/natives/JniDl01Native;->setGetOperation(ILjava/lang/String;I)I

    .line 852
    iget-object p1, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->mListener:Lcom/powervision/gcs/callback/FirmWarekUpdateListener;

    const/16 p2, 0x192

    invoke-interface {p1, v3, p2}, Lcom/powervision/gcs/callback/FirmWarekUpdateListener;->onUpdateFailed(II)V

    .line 853
    iget-object p1, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->transferProgressTv:Landroid/widget/TextView;

    new-instance p2, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment$22;

    invoke-direct {p2, p0}, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment$22;-><init>(Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 840
    :pswitch_9
    invoke-static {v2, v1, v3}, Lcom/powervision/natives/JniDl01Native;->setGetOperation(ILjava/lang/String;I)I

    .line 841
    iget-object p1, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->mListener:Lcom/powervision/gcs/callback/FirmWarekUpdateListener;

    const/16 p2, 0x191

    invoke-interface {p1, v0, p2}, Lcom/powervision/gcs/callback/FirmWarekUpdateListener;->onUpdateFailed(II)V

    .line 842
    iget-object p1, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->transferProgressTv:Landroid/widget/TextView;

    new-instance p2, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment$21;

    invoke-direct {p2, p0}, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment$21;-><init>(Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public mcu_BUpgradeStatus(II)V
    .locals 2

    const-string v0, "lzqMcu"

    const-string v1, "mcu-b \u5347\u7ea7"

    .line 957
    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x8

    const-string v1, "lzqUpdate"

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    const-string p1, " mcu \u9065\u63a7\u5668\u8df3\u8f6c\u5931\u8d25"

    .line 1030
    invoke-static {v1, p1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1031
    iget-object p1, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->transferProgressTv:Landroid/widget/TextView;

    new-instance p2, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment$37;

    invoke-direct {p2, p0}, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment$37;-><init>(Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 1038
    iget-object p1, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->mListener:Lcom/powervision/gcs/callback/FirmWarekUpdateListener;

    const/16 p2, 0x1f9

    invoke-interface {p1, v0, p2}, Lcom/powervision/gcs/callback/FirmWarekUpdateListener;->onUpdateFailed(II)V

    goto/16 :goto_0

    :pswitch_1
    const-string p1, " mcu \u9065\u63a7\u5668\u5347\u7ea7\u6587\u4ef6\u6821\u9a8c\u5931\u8d25"

    .line 1019
    invoke-static {v1, p1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1020
    iget-object p1, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->transferProgressTv:Landroid/widget/TextView;

    new-instance p2, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment$36;

    invoke-direct {p2, p0}, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment$36;-><init>(Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 1027
    iget-object p1, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->mListener:Lcom/powervision/gcs/callback/FirmWarekUpdateListener;

    const/16 p2, 0x1f8

    invoke-interface {p1, v0, p2}, Lcom/powervision/gcs/callback/FirmWarekUpdateListener;->onUpdateFailed(II)V

    goto/16 :goto_0

    :pswitch_2
    const-string p1, " mcu \u9065\u63a7\u5668\u53d1\u9001\u6587\u4ef6\u5931\u8d25"

    .line 1008
    invoke-static {v1, p1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1009
    iget-object p1, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->transferProgressTv:Landroid/widget/TextView;

    new-instance p2, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment$35;

    invoke-direct {p2, p0}, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment$35;-><init>(Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 1016
    iget-object p1, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->mListener:Lcom/powervision/gcs/callback/FirmWarekUpdateListener;

    const/16 p2, 0x1f7

    invoke-interface {p1, v0, p2}, Lcom/powervision/gcs/callback/FirmWarekUpdateListener;->onUpdateFailed(II)V

    goto :goto_0

    :pswitch_3
    const-string p1, " mcu \u9065\u63a7\u5668\u64e6\u9664\u539f\u56fa\u4ef6\u5931\u8d25"

    .line 997
    invoke-static {v1, p1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 998
    iget-object p1, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->transferProgressTv:Landroid/widget/TextView;

    new-instance p2, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment$34;

    invoke-direct {p2, p0}, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment$34;-><init>(Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 1005
    iget-object p1, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->mListener:Lcom/powervision/gcs/callback/FirmWarekUpdateListener;

    const/16 p2, 0x1f6

    invoke-interface {p1, v0, p2}, Lcom/powervision/gcs/callback/FirmWarekUpdateListener;->onUpdateFailed(II)V

    goto :goto_0

    :pswitch_4
    const-string p1, " mcu \u9065\u63a7\u5668\u8fdb\u5165bootload\u5931\u8d25"

    .line 986
    invoke-static {v1, p1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 987
    iget-object p1, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->mListener:Lcom/powervision/gcs/callback/FirmWarekUpdateListener;

    const/4 p2, 0x1

    const/16 v0, 0x1f5

    invoke-interface {p1, p2, v0}, Lcom/powervision/gcs/callback/FirmWarekUpdateListener;->onUpdateFailed(II)V

    .line 988
    iget-object p1, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->transferProgressTv:Landroid/widget/TextView;

    new-instance p2, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment$33;

    invoke-direct {p2, p0}, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment$33;-><init>(Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :pswitch_5
    const-string p1, " mcu \u9065\u63a7\u5668\u8df3\u8f6c\u7a0b\u5e8f\u6210\u529f"

    .line 976
    invoke-static {v1, p1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 977
    iget-object p1, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->transferProgressTv:Landroid/widget/TextView;

    new-instance p2, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment$32;

    invoke-direct {p2, p0}, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment$32;-><init>(Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :pswitch_6
    const-string p1, " mcu \u6821\u9a8c\u6587\u4ef6\u6210\u529f"

    .line 972
    invoke-static {v1, p1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_7
    const-string p1, " mcu  \u53d1\u9001\u6587\u4ef6\u5b8c\u6210"

    .line 960
    invoke-static {v1, p1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 961
    iget-object p1, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->transferProgressTv:Landroid/widget/TextView;

    new-instance p2, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment$31;

    invoke-direct {p2, p0}, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment$31;-><init>(Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1043
    :pswitch_8
    iget-object p1, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->transferProgressTv:Landroid/widget/TextView;

    new-instance v0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment$38;

    invoke-direct {v0, p0, p2}, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment$38;-><init>(Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;I)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public methodError()V
    .locals 3

    .line 1187
    iget-object v0, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->mListener:Lcom/powervision/gcs/callback/FirmWarekUpdateListener;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    const/16 v2, 0x25f

    .line 1188
    invoke-interface {v0, v1, v2}, Lcom/powervision/gcs/callback/FirmWarekUpdateListener;->onUpdateFailed(II)V

    .line 1190
    :cond_0
    iget-object v0, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->transferProgressTv:Landroid/widget/TextView;

    new-instance v1, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment$49;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment$49;-><init>(Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 134
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 135
    invoke-virtual {p0, p1}, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->setCancelable(Z)V

    .line 137
    invoke-virtual {p0}, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 138
    invoke-virtual {p0}, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "param_release_note"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->mReleaseNote:Ljava/lang/String;

    .line 139
    invoke-virtual {p0}, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "param_base_path"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->mBasePath:Ljava/lang/String;

    .line 140
    invoke-virtual {p0}, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "param_update_type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->mUpdateType:I

    .line 141
    invoke-virtual {p0}, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "param_body_filename"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->mFileName:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 147
    sget p3, Lcom/powervision/gcs/R$layout;->gcs_dialog_firmware_update:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 148
    invoke-virtual {p0}, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/Dialog;

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 150
    invoke-static {p0}, Lcom/powervision/gcs/update/task/FirmwareUpdateDialogTask;->create(Lcom/powervision/gcs/update/task/FirmwareUpdateDialogTask$View;)Lcom/powervision/gcs/update/presenter/PVW4FirmwareUpdateDialogPresenter;

    move-result-object p2

    iput-object p2, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->mPresenter:Lcom/powervision/gcs/update/presenter/PVW4FirmwareUpdateDialogPresenter;

    .line 151
    invoke-virtual {p0}, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p2

    iget-object p3, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->mPresenter:Lcom/powervision/gcs/update/presenter/PVW4FirmwareUpdateDialogPresenter;

    invoke-virtual {p2, p3}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 153
    sget p2, Lcom/powervision/gcs/R$id;->title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->title:Landroid/widget/TextView;

    .line 154
    sget p2, Lcom/powervision/gcs/R$id;->step3_text:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->step3_text:Landroid/widget/TextView;

    .line 155
    sget p2, Lcom/powervision/gcs/R$id;->progress1:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->progrees1:Landroid/widget/ImageView;

    .line 156
    sget p2, Lcom/powervision/gcs/R$id;->progress2:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->progrees2:Landroid/widget/ImageView;

    .line 157
    sget p2, Lcom/powervision/gcs/R$id;->progress3:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->progrees3:Landroid/widget/ImageView;

    .line 158
    sget p2, Lcom/powervision/gcs/R$id;->progress4:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->progrees4:Landroid/widget/ImageView;

    .line 160
    sget p2, Lcom/powervision/gcs/R$id;->step1Content:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->step1Content:Landroid/widget/TextView;

    .line 161
    sget p2, Lcom/powervision/gcs/R$id;->step2Content:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->step2Content:Landroid/widget/RelativeLayout;

    .line 162
    sget p2, Lcom/powervision/gcs/R$id;->step3Content:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->step3Content:Landroid/widget/LinearLayout;

    .line 163
    sget p2, Lcom/powervision/gcs/R$id;->step3Title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->step3Title:Landroid/widget/TextView;

    .line 165
    sget p2, Lcom/powervision/gcs/R$id;->transferProgressTv:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->transferProgressTv:Landroid/widget/TextView;

    .line 167
    sget p2, Lcom/powervision/gcs/R$id;->updateRemind:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->updateRemind:Landroid/widget/TextView;

    .line 168
    sget p2, Lcom/powervision/gcs/R$id;->doubleBtnContaner:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->doubleBtnContaner:Landroid/widget/LinearLayout;

    .line 169
    sget p2, Lcom/powervision/gcs/R$id;->doubleCancelBtn:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->doubleCancelBtn:Landroid/widget/TextView;

    .line 170
    sget p2, Lcom/powervision/gcs/R$id;->doubleSureBtn:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->doubleSureBtn:Landroid/widget/TextView;

    .line 171
    sget p2, Lcom/powervision/gcs/R$id;->sc_waring:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ScrollView;

    iput-object p2, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->scrollView:Landroid/widget/ScrollView;

    .line 172
    sget p2, Lcom/powervision/gcs/R$id;->SingleCancelBtn:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->singleCancelBtn:Landroid/widget/TextView;

    .line 173
    sget p2, Lcom/powervision/gcs/R$id;->SingleSureBtn:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->singleSureBtn:Landroid/widget/TextView;

    .line 174
    invoke-virtual {p0}, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->setTitle()V

    .line 175
    invoke-direct {p0}, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->initListener()V

    .line 177
    iget-object p2, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->step1Content:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/ScrollingMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 183
    invoke-virtual {p0, v0, v0}, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->setProgressTime(II)V

    .line 184
    invoke-direct {p0}, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->hideAllStepContent()V

    .line 185
    invoke-direct {p0}, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->step1()V

    .line 187
    invoke-direct {p0}, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->hideAllBtns()V

    .line 188
    invoke-direct {p0}, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->showDoubleBtn()V

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 342
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onDestroyView()V

    .line 343
    iget-object v0, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->zipThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 344
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    return-void
.end method

.method public onMsg(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public prepareClock(III)V
    .locals 8

    .line 1213
    iget-object p3, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->countDownTimer:Landroid/os/CountDownTimer;

    if-eqz p3, :cond_0

    .line 1214
    invoke-virtual {p3}, Landroid/os/CountDownTimer;->cancel()V

    const/4 p3, 0x0

    .line 1215
    iput-object p3, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->countDownTimer:Landroid/os/CountDownTimer;

    .line 1217
    :cond_0
    new-instance p3, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment$50;

    mul-int/lit16 v0, p1, 0x3e8

    int-to-long v2, v0

    const-wide/16 v4, 0x3e8

    move-object v0, p3

    move-object v1, p0

    move v6, p2

    move v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment$50;-><init>(Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;JJII)V

    iput-object p3, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->countDownTimer:Landroid/os/CountDownTimer;

    .line 1298
    invoke-virtual {p3}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method

.method public setProgressTime(II)V
    .locals 4

    .line 194
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0}, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/powervision/gcs/R$string;->Upgrade_50:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<font color=\"#222222\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "%"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 196
    iget-object v0, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->step3Title:Landroid/widget/TextView;

    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    iget-object p1, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->step3Title:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitle()V
    .locals 2

    .line 214
    iget v0, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->mUpdateType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->title:Landroid/widget/TextView;

    sget v1, Lcom/powervision/gcs/R$string;->pvw4_update_dl01_title:I

    invoke-virtual {p0, v1}, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 226
    :cond_1
    iget-object v0, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->title:Landroid/widget/TextView;

    sget v1, Lcom/powervision/gcs/R$string;->pvw4_update_wifi_title:I

    invoke-virtual {p0, v1}, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 220
    :cond_2
    iget-object v0, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->title:Landroid/widget/TextView;

    sget v1, Lcom/powervision/gcs/R$string;->pvw4_update_mcu_title:I

    invoke-virtual {p0, v1}, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 216
    :cond_3
    iget-object v0, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->title:Landroid/widget/TextView;

    sget v1, Lcom/powervision/gcs/R$string;->pvw4_update_body_title:I

    invoke-virtual {p0, v1}, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public setUpdateListener(Lcom/powervision/gcs/callback/FirmWarekUpdateListener;)V
    .locals 0

    .line 203
    iput-object p1, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->mListener:Lcom/powervision/gcs/callback/FirmWarekUpdateListener;

    return-void
.end method
