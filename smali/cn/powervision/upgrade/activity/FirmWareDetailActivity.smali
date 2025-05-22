.class public Lcn/powervision/upgrade/activity/FirmWareDetailActivity;
.super Lcom/powervision/base/base/BaseActivity;
.source "FirmWareDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/powervision/upgrade/activity/FirmWareDetailActivity$CheckSDCardThread;,
        Lcn/powervision/upgrade/activity/FirmWareDetailActivity$CheckSdCardListener;
    }
.end annotation


# instance fields
.field private bt_download_or_update:Landroid/widget/Button;

.field checkSDCardThread:Lcn/powervision/upgrade/activity/FirmWareDetailActivity$CheckSDCardThread;

.field private close:Landroid/view/View;

.field private device_img:Landroid/widget/ImageView;

.field private final hide_loading:I

.field jump:Z

.field private loadingProgressBar:Lcom/powervision/base/views/LoadingProgressBar;

.field private mHandler:Landroid/os/Handler;

.field private main_version_text:Landroid/widget/TextView;

.field private release_note_conentent:Landroid/widget/TextView;

.field private remote_version_text:Landroid/widget/TextView;

.field private final show_loading:I

.field private size_text:Landroid/widget/TextView;

.field private final tip_SD_Card:I

.field private final tip_can_upgrade:I

.field private update_device:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 44
    invoke-direct {p0}, Lcom/powervision/base/base/BaseActivity;-><init>()V

    const/4 v0, -0x1

    .line 54
    iput v0, p0, Lcn/powervision/upgrade/activity/FirmWareDetailActivity;->update_device:I

    .line 56
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcn/powervision/upgrade/activity/FirmWareDetailActivity$1;

    invoke-direct {v1, p0}, Lcn/powervision/upgrade/activity/FirmWareDetailActivity$1;-><init>(Lcn/powervision/upgrade/activity/FirmWareDetailActivity;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcn/powervision/upgrade/activity/FirmWareDetailActivity;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 122
    iput-boolean v0, p0, Lcn/powervision/upgrade/activity/FirmWareDetailActivity;->jump:Z

    const/4 v1, 0x0

    .line 308
    iput-object v1, p0, Lcn/powervision/upgrade/activity/FirmWareDetailActivity;->checkSDCardThread:Lcn/powervision/upgrade/activity/FirmWareDetailActivity$CheckSDCardThread;

    .line 309
    iput v0, p0, Lcn/powervision/upgrade/activity/FirmWareDetailActivity;->tip_SD_Card:I

    const/4 v0, 0x1

    .line 310
    iput v0, p0, Lcn/powervision/upgrade/activity/FirmWareDetailActivity;->tip_can_upgrade:I

    const/4 v0, 0x3

    .line 311
    iput v0, p0, Lcn/powervision/upgrade/activity/FirmWareDetailActivity;->show_loading:I

    const/4 v0, 0x4

    .line 312
    iput v0, p0, Lcn/powervision/upgrade/activity/FirmWareDetailActivity;->hide_loading:I

    return-void
.end method

.method static synthetic access$000(Lcn/powervision/upgrade/activity/FirmWareDetailActivity;)I
    .locals 0

    .line 44
    iget p0, p0, Lcn/powervision/upgrade/activity/FirmWareDetailActivity;->update_device:I

    return p0
.end method

.method static synthetic access$100(Lcn/powervision/upgrade/activity/FirmWareDetailActivity;)Landroid/os/Handler;
    .locals 0

    .line 44
    iget-object p0, p0, Lcn/powervision/upgrade/activity/FirmWareDetailActivity;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private showTipsAboutFlow(I)V
    .locals 3

    .line 534
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcn/powervision/upgrade/activity/FirmWareDetailActivity;->rootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 536
    iget-object v1, p0, Lcn/powervision/upgrade/activity/FirmWareDetailActivity;->rootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcn/powervision/upgrade/R$string;->AP03_Upgrade_59:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 538
    sget v1, Lcn/powervision/upgrade/R$string;->AP03_GeneralSetting_11:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    const/4 v1, 0x0

    .line 539
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 540
    iget-object v1, p0, Lcn/powervision/upgrade/activity/FirmWareDetailActivity;->rootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcn/powervision/upgrade/R$string;->AP03_ConnectGuide_47:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcn/powervision/upgrade/activity/FirmWareDetailActivity$7;

    invoke-direct {v2, p0, p1}, Lcn/powervision/upgrade/activity/FirmWareDetailActivity$7;-><init>(Lcn/powervision/upgrade/activity/FirmWareDetailActivity;I)V

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 547
    sget p1, Lcn/powervision/upgrade/R$string;->AP03_AI_2:I

    invoke-virtual {p0, p1}, Lcn/powervision/upgrade/activity/FirmWareDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcn/powervision/upgrade/activity/FirmWareDetailActivity$8;

    invoke-direct {v1, p0}, Lcn/powervision/upgrade/activity/FirmWareDetailActivity$8;-><init>(Lcn/powervision/upgrade/activity/FirmWareDetailActivity;)V

    invoke-virtual {v0, p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 556
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 557
    new-instance v0, Lcn/powervision/upgrade/activity/FirmWareDetailActivity$9;

    invoke-direct {v0, p0}, Lcn/powervision/upgrade/activity/FirmWareDetailActivity$9;-><init>(Lcn/powervision/upgrade/activity/FirmWareDetailActivity;)V

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    const-string v0, "lzqFirm"

    const-string v1, "showFlowtips"

    .line 563
    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method public clickUpgrade(I)V
    .locals 5

    .line 316
    iget-object v0, p0, Lcn/powervision/upgrade/activity/FirmWareDetailActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 317
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clickUpgrade update_device:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lzqFirm"

    invoke-static {v1, v0}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v2, 0x4

    if-nez p1, :cond_2

    .line 319
    invoke-static {}, Lcn/powervision/upgrade/manager/NewFirmWareManager$FirmWareStc;->getDev_fsVersion()Ljava/lang/String;

    move-result-object v3

    const-string v4, "0.0.0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {}, Lcn/powervision/upgrade/manager/NewFirmWareManager$FirmWareStc;->getDev_fsVersion()Ljava/lang/String;

    move-result-object v3

    const-string v4, "1.6.1"

    invoke-static {v3, v4}, Lcn/powervision/upgrade/manager/FirmWareUtils;->compareTwoVersion(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v0, "sd\u5361 \u83b7\u53d6\u5230\u4e86\u7248\u672c\u53f7 \u5e76\u4e14\u6ee1\u8db3\u6761\u4ef6"

    .line 320
    invoke-static {v1, v0}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    iget-object v0, p0, Lcn/powervision/upgrade/activity/FirmWareDetailActivity;->checkSDCardThread:Lcn/powervision/upgrade/activity/FirmWareDetailActivity$CheckSDCardThread;

    if-eqz v0, :cond_0

    return-void

    .line 325
    :cond_0
    new-instance v0, Lcn/powervision/upgrade/activity/FirmWareDetailActivity$CheckSDCardThread;

    new-instance v1, Lcn/powervision/upgrade/activity/FirmWareDetailActivity$6;

    invoke-direct {v1, p0, p1}, Lcn/powervision/upgrade/activity/FirmWareDetailActivity$6;-><init>(Lcn/powervision/upgrade/activity/FirmWareDetailActivity;I)V

    invoke-direct {v0, v1}, Lcn/powervision/upgrade/activity/FirmWareDetailActivity$CheckSDCardThread;-><init>(Lcn/powervision/upgrade/activity/FirmWareDetailActivity$CheckSdCardListener;)V

    iput-object v0, p0, Lcn/powervision/upgrade/activity/FirmWareDetailActivity;->checkSDCardThread:Lcn/powervision/upgrade/activity/FirmWareDetailActivity$CheckSDCardThread;

    .line 350
    invoke-virtual {v0}, Lcn/powervision/upgrade/activity/FirmWareDetailActivity$CheckSDCardThread;->start()V

    goto :goto_0

    .line 353
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sd\u5361 \u7248\u672c\u54c8\u5965\u5f02\u5e38 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/powervision/upgrade/manager/NewFirmWareManager$FirmWareStc;->getDev_fsVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    iget-object v1, p0, Lcn/powervision/upgrade/activity/FirmWareDetailActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 355
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 356
    iput v0, v1, Landroid/os/Message;->what:I

    .line 357
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 358
    iget-object p1, p0, Lcn/powervision/upgrade/activity/FirmWareDetailActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 361
    :cond_2
    iget-object v3, p0, Lcn/powervision/upgrade/activity/FirmWareDetailActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 362
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 363
    iput v0, v2, Landroid/os/Message;->what:I

    .line 364
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 365
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " \u4e0d\u68c0\u6d4bSD\u5361 "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    iget-object p1, p0, Lcn/powervision/upgrade/activity/FirmWareDetailActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void
.end method

.method protected getLayoutRes()I
    .locals 1

    .line 119
    sget v0, Lcn/powervision/upgrade/R$layout;->firmware_detail_activity:I

    return v0
.end method

.method public hideloadingDialog()V
    .locals 2

    const-string v0, "lzqFirm"

    const-string v1, "hideloadingDialog who:"

    .line 385
    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    iget-object v0, p0, Lcn/powervision/upgrade/activity/FirmWareDetailActivity;->loadingProgressBar:Lcom/powervision/base/views/LoadingProgressBar;

    if-eqz v0, :cond_0

    .line 389
    invoke-virtual {v0}, Lcom/powervision/base/views/LoadingProgressBar;->dismiss()V

    const/4 v0, 0x0

    .line 390
    iput-object v0, p0, Lcn/powervision/upgrade/activity/FirmWareDetailActivity;->loadingProgressBar:Lcom/powervision/base/views/LoadingProgressBar;

    :cond_0
    return-void
.end method

.method protected initView(Landroid/os/Bundle;)V
    .locals 17

    move-object/from16 v0, p0

    const-string v1, "lzqFirm"

    const-string v2, "FirmWareDetailActivity initviews"

    .line 126
    invoke-static {v1, v2}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    invoke-virtual/range {p0 .. p0}, Lcn/powervision/upgrade/activity/FirmWareDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 128
    sget-object v3, Lcn/powervision/upgrade/manager/NewFirmWareManager;->RELEASE_NOTE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 129
    sget-object v4, Lcn/powervision/upgrade/manager/NewFirmWareManager;->DETAIL_TYPE:Ljava/lang/String;

    const/4 v5, -0x1

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 130
    sget-object v6, Lcn/powervision/upgrade/manager/NewFirmWareManager;->DOWNLOAD_DEVICE:Ljava/lang/String;

    invoke-virtual {v2, v6, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 131
    sget-object v7, Lcn/powervision/upgrade/manager/NewFirmWareManager;->UPDATE_DEVICE:Ljava/lang/String;

    invoke-virtual {v2, v7, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    iput v7, v0, Lcn/powervision/upgrade/activity/FirmWareDetailActivity;->update_device:I

    .line 132
    sget-object v7, Lcn/powervision/upgrade/manager/NewFirmWareManager;->SIZE:Ljava/lang/String;

    const-wide/16 v8, 0x0

    invoke-virtual {v2, v7, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v7

    if-eq v6, v5, :cond_0

    long-to-float v5, v7

    const/4 v9, 0x0

    cmpl-float v5, v5, v9

    if-nez v5, :cond_1

    .line 134
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcn/powervision/upgrade/activity/FirmWareDetailActivity;->finish()V

    const-string v5, "error"

    .line 135
    invoke-static {v5}, Lcom/powervision/base/utils/ToastUtils;->showDefaultToast(Ljava/lang/String;)V

    .line 140
    :cond_1
    invoke-static {v3}, Lcn/powervision/upgrade/manager/ReleaseNoteUtils;->stringToReleaseNotes(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_2

    .line 142
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :cond_2
    const-string v5, "JUMP"

    const/4 v9, 0x0

    .line 145
    invoke-virtual {v2, v5, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v0, Lcn/powervision/upgrade/activity/FirmWareDetailActivity;->jump:Z

    const-string v2, ""

    move-object v5, v2

    const/4 v10, 0x0

    .line 147
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v11

    if-ge v10, v11, :cond_5

    .line 148
    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcn/powervision/upgrade/model/ReleaseNote;

    .line 150
    invoke-virtual {v11}, Lcn/powervision/upgrade/model/ReleaseNote;->getDeviceType()Ljava/lang/String;

    move-result-object v12

    const-string v13, "\u9065\u63a7\u5668"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 151
    invoke-virtual {v11}, Lcn/powervision/upgrade/model/ReleaseNote;->getDeviceVersion()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 152
    :cond_3
    invoke-virtual {v11}, Lcn/powervision/upgrade/model/ReleaseNote;->getDeviceType()Ljava/lang/String;

    move-result-object v12

    const-string v13, "\u4e3b\u673a"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 153
    invoke-virtual {v11}, Lcn/powervision/upgrade/model/ReleaseNote;->getDeviceVersion()Ljava/lang/String;

    move-result-object v2

    :cond_4
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 158
    :cond_5
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 159
    invoke-static {}, Lcom/powervision/base/utils/LanguageUtils;->getLanguageisChina()Z

    move-result v11

    const-string v12, "\r\n"

    if-eqz v11, :cond_7

    const/4 v11, 0x0

    .line 161
    :goto_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v13

    if-ge v11, v13, :cond_b

    .line 162
    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcn/powervision/upgrade/model/ReleaseNote;

    invoke-virtual {v13}, Lcn/powervision/upgrade/model/ReleaseNote;->getReleaseNoteZH()Ljava/util/List;

    move-result-object v13

    const/4 v14, 0x0

    .line 164
    :goto_3
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v15

    if-ge v14, v15, :cond_6

    .line 165
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v9, v16

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v14, v14, 0x1

    const/4 v9, 0x0

    goto :goto_3

    :cond_6
    add-int/lit8 v11, v11, 0x1

    const/4 v9, 0x0

    goto :goto_2

    .line 169
    :cond_7
    invoke-static {}, Lcom/powervision/base/utils/LanguageUtils;->getLanguageIsJapan()Z

    move-result v9

    if-eqz v9, :cond_9

    const/4 v9, 0x0

    .line 170
    :goto_4
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v11

    if-ge v9, v11, :cond_b

    .line 171
    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcn/powervision/upgrade/model/ReleaseNote;

    invoke-virtual {v11}, Lcn/powervision/upgrade/model/ReleaseNote;->getReleaseNoteJA()Ljava/util/List;

    move-result-object v11

    const/4 v13, 0x0

    .line 173
    :goto_5
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v14

    if-ge v13, v14, :cond_8

    .line 174
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v11, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    :cond_8
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_9
    const/4 v9, 0x0

    .line 180
    :goto_6
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v11

    if-ge v9, v11, :cond_b

    .line 181
    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcn/powervision/upgrade/model/ReleaseNote;

    invoke-virtual {v11}, Lcn/powervision/upgrade/model/ReleaseNote;->getReleaseNoteEN()Ljava/util/List;

    move-result-object v11

    const/4 v13, 0x0

    .line 183
    :goto_7
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v14

    if-ge v13, v14, :cond_a

    .line 184
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v11, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v13, v13, 0x1

    goto :goto_7

    :cond_a
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 190
    :cond_b
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 191
    sget v9, Lcn/powervision/upgrade/R$id;->release_note_conentent:I

    invoke-virtual {v0, v9}, Lcn/powervision/upgrade/activity/FirmWareDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, v0, Lcn/powervision/upgrade/activity/FirmWareDetailActivity;->release_note_conentent:Landroid/widget/TextView;

    .line 192
    sget v9, Lcn/powervision/upgrade/R$id;->download_or_update:I

    invoke-virtual {v0, v9}, Lcn/powervision/upgrade/activity/FirmWareDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Button;

    iput-object v9, v0, Lcn/powervision/upgrade/activity/FirmWareDetailActivity;->bt_download_or_update:Landroid/widget/Button;

    .line 193
    sget v9, Lcn/powervision/upgrade/R$id;->device_img:I

    invoke-virtual {v0, v9}, Lcn/powervision/upgrade/activity/FirmWareDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    iput-object v9, v0, Lcn/powervision/upgrade/activity/FirmWareDetailActivity;->device_img:Landroid/widget/ImageView;

    .line 194
    sget v9, Lcn/powervision/upgrade/R$id;->close_black:I

    invoke-virtual {v0, v9}, Lcn/powervision/upgrade/activity/FirmWareDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    iput-object v9, v0, Lcn/powervision/upgrade/activity/FirmWareDetailActivity;->close:Landroid/view/View;

    .line 195
    sget v9, Lcn/powervision/upgrade/R$id;->main_version_text:I

    invoke-virtual {v0, v9}, Lcn/powervision/upgrade/activity/FirmWareDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, v0, Lcn/powervision/upgrade/activity/FirmWareDetailActivity;->main_version_text:Landroid/widget/TextView;

    .line 196
    sget v9, Lcn/powervision/upgrade/R$id;->remote_version_text:I

    invoke-virtual {v0, v9}, Lcn/powervision/upgrade/activity/FirmWareDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, v0, Lcn/powervision/upgrade/activity/FirmWareDetailActivity;->remote_version_text:Landroid/widget/TextView;

    .line 197
    sget v9, Lcn/powervision/upgrade/R$id;->size:I

    invoke-virtual {v0, v9}, Lcn/powervision/upgrade/activity/FirmWareDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, v0, Lcn/powervision/upgrade/activity/FirmWareDetailActivity;->size_text:Landroid/widget/TextView;

    .line 198
    invoke-static {v7, v8}, Lcom/powervision/base/utils/StorageUtil;->formatFileSize(J)Ljava/lang/String;

    move-result-object v7

    .line 199
    iget-object v8, v0, Lcn/powervision/upgrade/activity/FirmWareDetailActivity;->size_text:Landroid/widget/TextView;

    sget-object v9, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    sget v10, Lcn/powervision/upgrade/R$string;->AP03_Upgrade_57:I

    invoke-virtual {v0, v10}, Lcn/powervision/upgrade/activity/FirmWareDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    new-array v12, v11, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v7, v12, v13

    invoke-static {v9, v10, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " \u529f\u80fd\u7c7b\u578b download_or_upgrade_type "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " \u529f\u80fd\u7c7b\u578b download_device "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " \u529f\u80fd\u7c7b\u578b update_device "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v0, Lcn/powervision/upgrade/activity/FirmWareDetailActivity;->update_device:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ":"

    const/4 v7, 0x4

    if-ne v4, v11, :cond_f

    .line 208
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_c

    .line 209
    iget-object v6, v0, Lcn/powervision/upgrade/activity/FirmWareDetailActivity;->main_version_text:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget v9, Lcn/powervision/upgrade/R$string;->AP03_DV_GeneralSetting_35_1:I

    invoke-virtual {v0, v9}, Lcn/powervision/upgrade/activity/FirmWareDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8

    .line 211
    :cond_c
    iget-object v2, v0, Lcn/powervision/upgrade/activity/FirmWareDetailActivity;->main_version_text:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 213
    :goto_8
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 214
    iget-object v2, v0, Lcn/powervision/upgrade/activity/FirmWareDetailActivity;->remote_version_text:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget v7, Lcn/powervision/upgrade/R$string;->AP03_DV_GeneralSetting_34:I

    invoke-virtual {v0, v7}, Lcn/powervision/upgrade/activity/FirmWareDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_9

    .line 216
    :cond_d
    iget-object v1, v0, Lcn/powervision/upgrade/activity/FirmWareDetailActivity;->remote_version_text:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 219
    :goto_9
    iget v1, v0, Lcn/powervision/upgrade/activity/FirmWareDetailActivity;->update_device:I

    if-nez v1, :cond_e

    .line 220
    iget-object v1, v0, Lcn/powervision/upgrade/activity/FirmWareDetailActivity;->device_img:Landroid/widget/ImageView;

    sget v2, Lcn/powervision/upgrade/R$mipmap;->detail_ap03:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_d

    .line 222
    :cond_e
    iget-object v1, v0, Lcn/powervision/upgrade/activity/FirmWareDetailActivity;->device_img:Landroid/widget/ImageView;

    sget v2, Lcn/powervision/upgrade/R$mipmap;->detail_remote:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_d

    :cond_f
    if-nez v6, :cond_11

    .line 228
    iget-object v5, v0, Lcn/powervision/upgrade/activity/FirmWareDetailActivity;->device_img:Landroid/widget/ImageView;

    sget v6, Lcn/powervision/upgrade/R$mipmap;->detail_ap03:I

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 229
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_10

    .line 230
    iget-object v5, v0, Lcn/powervision/upgrade/activity/FirmWareDetailActivity;->main_version_text:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget v8, Lcn/powervision/upgrade/R$string;->AP03_DV_GeneralSetting_35_1:I

    invoke-virtual {v0, v8}, Lcn/powervision/upgrade/activity/FirmWareDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_a

    .line 232
    :cond_10
    iget-object v1, v0, Lcn/powervision/upgrade/activity/FirmWareDetailActivity;->main_version_text:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 234
    :goto_a
    iget-object v1, v0, Lcn/powervision/upgrade/activity/FirmWareDetailActivity;->remote_version_text:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_d

    :cond_11
    if-ne v6, v11, :cond_13

    .line 237
    iget-object v2, v0, Lcn/powervision/upgrade/activity/FirmWareDetailActivity;->device_img:Landroid/widget/ImageView;

    sget v6, Lcn/powervision/upgrade/R$mipmap;->detail_remote:I

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 238
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_12

    .line 239
    iget-object v2, v0, Lcn/powervision/upgrade/activity/FirmWareDetailActivity;->remote_version_text:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget v8, Lcn/powervision/upgrade/R$string;->AP03_DV_GeneralSetting_34:I

    invoke-virtual {v0, v8}, Lcn/powervision/upgrade/activity/FirmWareDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_b

    .line 241
    :cond_12
    iget-object v1, v0, Lcn/powervision/upgrade/activity/FirmWareDetailActivity;->remote_version_text:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 244
    :goto_b
    iget-object v1, v0, Lcn/powervision/upgrade/activity/FirmWareDetailActivity;->main_version_text:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_d

    .line 248
    :cond_13
    iget-object v6, v0, Lcn/powervision/upgrade/activity/FirmWareDetailActivity;->device_img:Landroid/widget/ImageView;

    sget v8, Lcn/powervision/upgrade/R$mipmap;->detail_ap03:I

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 250
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_14

    .line 251
    iget-object v6, v0, Lcn/powervision/upgrade/activity/FirmWareDetailActivity;->main_version_text:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget v9, Lcn/powervision/upgrade/R$string;->AP03_DV_GeneralSetting_35_1:I

    invoke-virtual {v0, v9}, Lcn/powervision/upgrade/activity/FirmWareDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_c

    .line 253
    :cond_14
    iget-object v2, v0, Lcn/powervision/upgrade/activity/FirmWareDetailActivity;->main_version_text:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 255
    :goto_c
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_15

    .line 256
    iget-object v2, v0, Lcn/powervision/upgrade/activity/FirmWareDetailActivity;->remote_version_text:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget v7, Lcn/powervision/upgrade/R$string;->AP03_DV_GeneralSetting_34:I

    invoke-virtual {v0, v7}, Lcn/powervision/upgrade/activity/FirmWareDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_d

    .line 258
    :cond_15
    iget-object v1, v0, Lcn/powervision/upgrade/activity/FirmWareDetailActivity;->remote_version_text:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 264
    :goto_d
    iget-object v1, v0, Lcn/powervision/upgrade/activity/FirmWareDetailActivity;->release_note_conentent:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-nez v4, :cond_16

    .line 266
    iget-object v1, v0, Lcn/powervision/upgrade/activity/FirmWareDetailActivity;->bt_download_or_update:Landroid/widget/Button;

    sget v2, Lcn/powervision/upgrade/R$string;->AP03_MediaLib_14:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    goto :goto_e

    .line 268
    :cond_16
    iget-object v1, v0, Lcn/powervision/upgrade/activity/FirmWareDetailActivity;->bt_download_or_update:Landroid/widget/Button;

    sget v2, Lcn/powervision/upgrade/R$string;->AP03_Upgrade_105:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 272
    :goto_e
    iget-object v1, v0, Lcn/powervision/upgrade/activity/FirmWareDetailActivity;->close:Landroid/view/View;

    new-instance v2, Lcn/powervision/upgrade/activity/FirmWareDetailActivity$4;

    invoke-direct {v2, v0}, Lcn/powervision/upgrade/activity/FirmWareDetailActivity$4;-><init>(Lcn/powervision/upgrade/activity/FirmWareDetailActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 278
    iget-object v1, v0, Lcn/powervision/upgrade/activity/FirmWareDetailActivity;->bt_download_or_update:Landroid/widget/Button;

    new-instance v2, Lcn/powervision/upgrade/activity/FirmWareDetailActivity$5;

    invoke-direct {v2, v0, v4}, Lcn/powervision/upgrade/activity/FirmWareDetailActivity$5;-><init>(Lcn/powervision/upgrade/activity/FirmWareDetailActivity;I)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public isWiFiActive(Landroid/content/Context;)Z
    .locals 4

    .line 568
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "connectivity"

    .line 570
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 572
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    .line 574
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 575
    aget-object v2, p1, v1

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WIFI"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    aget-object v2, p1, v1

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public showTips()V
    .locals 3

    .line 91
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcn/powervision/upgrade/activity/FirmWareDetailActivity;->rootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 93
    iget-object v1, p0, Lcn/powervision/upgrade/activity/FirmWareDetailActivity;->rootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcn/powervision/upgrade/R$string;->AP03_Upgrade_112:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 95
    sget v1, Lcn/powervision/upgrade/R$string;->AP03_GeneralSetting_11:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    const/4 v1, 0x0

    .line 96
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 97
    iget-object v1, p0, Lcn/powervision/upgrade/activity/FirmWareDetailActivity;->rootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcn/powervision/upgrade/R$string;->AP03_ConnectGuide_47:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcn/powervision/upgrade/activity/FirmWareDetailActivity$2;

    invoke-direct {v2, p0}, Lcn/powervision/upgrade/activity/FirmWareDetailActivity$2;-><init>(Lcn/powervision/upgrade/activity/FirmWareDetailActivity;)V

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 105
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    .line 106
    new-instance v1, Lcn/powervision/upgrade/activity/FirmWareDetailActivity$3;

    invoke-direct {v1, p0}, Lcn/powervision/upgrade/activity/FirmWareDetailActivity$3;-><init>(Lcn/powervision/upgrade/activity/FirmWareDetailActivity;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    const-string v1, "lzqDia"

    const-string v2, "show"

    .line 112
    invoke-static {v1, v2}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->show()V

    return-void
.end method

.method public showloadingDialog(Ljava/lang/String;I)V
    .locals 1

    .line 373
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "showloadingDialog who:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "lzqFirm"

    invoke-static {p2, p1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    iget-object p1, p0, Lcn/powervision/upgrade/activity/FirmWareDetailActivity;->loadingProgressBar:Lcom/powervision/base/views/LoadingProgressBar;

    if-nez p1, :cond_0

    .line 377
    new-instance p1, Lcom/powervision/base/views/LoadingProgressBar;

    invoke-direct {p1, p0}, Lcom/powervision/base/views/LoadingProgressBar;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcn/powervision/upgrade/activity/FirmWareDetailActivity;->loadingProgressBar:Lcom/powervision/base/views/LoadingProgressBar;

    .line 381
    :cond_0
    iget-object p1, p0, Lcn/powervision/upgrade/activity/FirmWareDetailActivity;->loadingProgressBar:Lcom/powervision/base/views/LoadingProgressBar;

    invoke-virtual {p1}, Lcom/powervision/base/views/LoadingProgressBar;->show()V

    return-void
.end method

.method public toDownLoadActivity(IZ)V
    .locals 2

    .line 296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isFirst:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lzqFirm"

    invoke-static {v1, v0}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    invoke-virtual {p0, p0}, Lcn/powervision/upgrade/activity/FirmWareDetailActivity;->isWiFiActive(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 304
    :cond_0
    invoke-direct {p0, p1}, Lcn/powervision/upgrade/activity/FirmWareDetailActivity;->showTipsAboutFlow(I)V

    goto :goto_1

    .line 298
    :cond_1
    :goto_0
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 299
    iget-boolean v0, p0, Lcn/powervision/upgrade/activity/FirmWareDetailActivity;->jump:Z

    const-string v1, "JUMP"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "param_update_type"

    .line 300
    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 301
    const-class p1, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;

    invoke-virtual {p0, p1, p2}, Lcn/powervision/upgrade/activity/FirmWareDetailActivity;->startActivity(Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 302
    invoke-virtual {p0}, Lcn/powervision/upgrade/activity/FirmWareDetailActivity;->finish()V

    :goto_1
    return-void
.end method

.method public toUpdateActivity(I)V
    .locals 2

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "toUpdateActivity type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lzqFirm"

    invoke-static {v1, v0}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "param_update_type"

    .line 84
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 85
    const-class p1, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;

    invoke-virtual {p0, p1, v0}, Lcn/powervision/upgrade/activity/FirmWareDetailActivity;->startActivity(Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 86
    invoke-virtual {p0}, Lcn/powervision/upgrade/activity/FirmWareDetailActivity;->finish()V

    return-void
.end method
