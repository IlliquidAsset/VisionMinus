.class public Lcn/powervision/upgrade/activity/FirmWareUpgradeFinishActivity;
.super Lcom/powervision/base/base/BaseActivity;
.source "FirmWareUpgradeFinishActivity.java"


# instance fields
.field private batteryVersion:Landroid/widget/TextView;

.field private failedLayout:Landroid/view/View;

.field private loadingProgressBar:Lcom/powervision/base/views/LoadingProgressBar;

.field private mainVersion:Landroid/widget/TextView;

.field private remoteVersion:Landroid/widget/TextView;

.field private successLayout:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/powervision/base/base/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcn/powervision/upgrade/activity/FirmWareUpgradeFinishActivity;)Lcom/powervision/base/views/LoadingProgressBar;
    .locals 0

    .line 30
    iget-object p0, p0, Lcn/powervision/upgrade/activity/FirmWareUpgradeFinishActivity;->loadingProgressBar:Lcom/powervision/base/views/LoadingProgressBar;

    return-object p0
.end method

.method static synthetic access$002(Lcn/powervision/upgrade/activity/FirmWareUpgradeFinishActivity;Lcom/powervision/base/views/LoadingProgressBar;)Lcom/powervision/base/views/LoadingProgressBar;
    .locals 0

    .line 30
    iput-object p1, p0, Lcn/powervision/upgrade/activity/FirmWareUpgradeFinishActivity;->loadingProgressBar:Lcom/powervision/base/views/LoadingProgressBar;

    return-object p1
.end method

.method static synthetic access$100(Lcn/powervision/upgrade/activity/FirmWareUpgradeFinishActivity;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcn/powervision/upgrade/activity/FirmWareUpgradeFinishActivity;->toAfterSalesActivity()V

    return-void
.end method

.method private initFailed(I)V
    .locals 4

    .line 180
    iget-object v0, p0, Lcn/powervision/upgrade/activity/FirmWareUpgradeFinishActivity;->successLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 181
    iget-object v0, p0, Lcn/powervision/upgrade/activity/FirmWareUpgradeFinishActivity;->successLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 184
    :cond_0
    iget-object v0, p0, Lcn/powervision/upgrade/activity/FirmWareUpgradeFinishActivity;->failedLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 185
    iget-object v0, p0, Lcn/powervision/upgrade/activity/FirmWareUpgradeFinishActivity;->failedLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    const/16 v0, -0x7b

    if-eq p1, v0, :cond_2

    .line 189
    sget v0, Lcn/powervision/upgrade/R$id;->failed_title:I

    invoke-virtual {p0, v0}, Lcn/powervision/upgrade/activity/FirmWareUpgradeFinishActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 190
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " errorCode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    :cond_2
    sget p1, Lcn/powervision/upgrade/R$id;->failed_link:I

    invoke-virtual {p0, p1}, Lcn/powervision/upgrade/activity/FirmWareUpgradeFinishActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 195
    new-instance v0, Landroid/text/SpannableString;

    sget v2, Lcn/powervision/upgrade/R$string;->AP03_Upgrade_110:I

    invoke-virtual {p0, v2}, Lcn/powervision/upgrade/activity/FirmWareUpgradeFinishActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 196
    new-instance v2, Landroid/text/style/UnderlineSpan;

    invoke-direct {v2}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v3

    invoke-virtual {v0, v2, v1, v3, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 197
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    new-instance v0, Lcn/powervision/upgrade/activity/FirmWareUpgradeFinishActivity$5;

    invoke-direct {v0, p0}, Lcn/powervision/upgrade/activity/FirmWareUpgradeFinishActivity$5;-><init>(Lcn/powervision/upgrade/activity/FirmWareUpgradeFinishActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initSuccess(I)V
    .locals 9

    .line 118
    iget-object v0, p0, Lcn/powervision/upgrade/activity/FirmWareUpgradeFinishActivity;->successLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcn/powervision/upgrade/activity/FirmWareUpgradeFinishActivity;->successLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 122
    :cond_0
    iget-object v0, p0, Lcn/powervision/upgrade/activity/FirmWareUpgradeFinishActivity;->failedLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_1

    .line 123
    iget-object v0, p0, Lcn/powervision/upgrade/activity/FirmWareUpgradeFinishActivity;->failedLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    const-string v0, ""

    const/4 v2, 0x1

    .line 126
    invoke-virtual {p0, v0, v2}, Lcn/powervision/upgrade/activity/FirmWareUpgradeFinishActivity;->showloadingDialog(Ljava/lang/String;I)V

    .line 127
    iget-object v2, p0, Lcn/powervision/upgrade/activity/FirmWareUpgradeFinishActivity;->successLayout:Landroid/view/View;

    new-instance v3, Lcn/powervision/upgrade/activity/FirmWareUpgradeFinishActivity$4;

    invoke-direct {v3, p0}, Lcn/powervision/upgrade/activity/FirmWareUpgradeFinishActivity$4;-><init>(Lcn/powervision/upgrade/activity/FirmWareUpgradeFinishActivity;)V

    const-wide/16 v4, 0x1388

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 136
    invoke-static {}, Lcn/powervision/upgrade/manager/ReleaseNoteUtils;->readReleaseNote_string()Ljava/lang/String;

    move-result-object v2

    .line 137
    invoke-static {v2}, Lcn/powervision/upgrade/manager/ReleaseNoteUtils;->stringToReleaseNotes(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x4

    if-eqz v2, :cond_8

    .line 141
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_2

    goto/16 :goto_2

    :cond_2
    move-object v1, v0

    move-object v4, v1

    const/4 v5, 0x0

    .line 150
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_6

    .line 151
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/powervision/upgrade/model/ReleaseNote;

    .line 153
    invoke-virtual {v6}, Lcn/powervision/upgrade/model/ReleaseNote;->getDeviceType()Ljava/lang/String;

    move-result-object v7

    const-string v8, "\u9065\u63a7\u5668"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 154
    invoke-virtual {v6}, Lcn/powervision/upgrade/model/ReleaseNote;->getDeviceVersion()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 155
    :cond_3
    invoke-virtual {v6}, Lcn/powervision/upgrade/model/ReleaseNote;->getDeviceType()Ljava/lang/String;

    move-result-object v7

    const-string v8, "\u4e3b\u673a"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 156
    invoke-virtual {v6}, Lcn/powervision/upgrade/model/ReleaseNote;->getDeviceVersion()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 157
    :cond_4
    invoke-virtual {v6}, Lcn/powervision/upgrade/model/ReleaseNote;->getDeviceType()Ljava/lang/String;

    move-result-object v7

    const-string v8, "\u7535\u6c60"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 158
    invoke-virtual {v6}, Lcn/powervision/upgrade/model/ReleaseNote;->getDeviceVersion()Ljava/lang/String;

    move-result-object v4

    :cond_5
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 162
    :cond_6
    iget-object v2, p0, Lcn/powervision/upgrade/activity/FirmWareUpgradeFinishActivity;->mainVersion:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcn/powervision/upgrade/activity/FirmWareUpgradeFinishActivity;->mainVersion:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    iget-object v0, p0, Lcn/powervision/upgrade/activity/FirmWareUpgradeFinishActivity;->remoteVersion:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcn/powervision/upgrade/activity/FirmWareUpgradeFinishActivity;->remoteVersion:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    iget-object v0, p0, Lcn/powervision/upgrade/activity/FirmWareUpgradeFinishActivity;->batteryVersion:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcn/powervision/upgrade/activity/FirmWareUpgradeFinishActivity;->batteryVersion:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-nez p1, :cond_7

    .line 167
    iget-object p1, p0, Lcn/powervision/upgrade/activity/FirmWareUpgradeFinishActivity;->remoteVersion:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 169
    :cond_7
    iget-object p1, p0, Lcn/powervision/upgrade/activity/FirmWareUpgradeFinishActivity;->mainVersion:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 170
    iget-object p1, p0, Lcn/powervision/upgrade/activity/FirmWareUpgradeFinishActivity;->batteryVersion:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 143
    :cond_8
    :goto_2
    iget-object p1, p0, Lcn/powervision/upgrade/activity/FirmWareUpgradeFinishActivity;->mainVersion:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 144
    iget-object p1, p0, Lcn/powervision/upgrade/activity/FirmWareUpgradeFinishActivity;->remoteVersion:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 145
    iget-object p1, p0, Lcn/powervision/upgrade/activity/FirmWareUpgradeFinishActivity;->batteryVersion:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_3
    return-void
.end method

.method private toAfterSalesActivity()V
    .locals 1

    .line 211
    const-class v0, Lcn/powervision/upgrade/activity/AfterSaleListActivity;

    invoke-virtual {p0, v0}, Lcn/powervision/upgrade/activity/FirmWareUpgradeFinishActivity;->startActivity(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method protected getLayoutRes()I
    .locals 1

    .line 78
    sget v0, Lcn/powervision/upgrade/R$layout;->upgrade_finish_activity:I

    return v0
.end method

.method public hideloadingDialog()V
    .locals 2

    const-string v0, "lzqFirm"

    const-string v1, "hideloadingDialog who:"

    .line 63
    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    new-instance v0, Lcn/powervision/upgrade/activity/FirmWareUpgradeFinishActivity$2;

    invoke-direct {v0, p0}, Lcn/powervision/upgrade/activity/FirmWareUpgradeFinishActivity$2;-><init>(Lcn/powervision/upgrade/activity/FirmWareUpgradeFinishActivity;)V

    invoke-virtual {p0, v0}, Lcn/powervision/upgrade/activity/FirmWareUpgradeFinishActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected initView(Landroid/os/Bundle;)V
    .locals 5

    .line 84
    invoke-virtual {p0}, Lcn/powervision/upgrade/activity/FirmWareUpgradeFinishActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 85
    sget-object v0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->UPGRADE_RES:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 86
    sget-object v2, Lcn/powervision/upgrade/manager/NewFirmWareManager;->UPDATE_DEVICE:Ljava/lang/String;

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 87
    sget-object v2, Lcn/powervision/upgrade/manager/NewFirmWareManager;->ERROR_CODE:Ljava/lang/String;

    const/16 v3, -0x7b

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 88
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "res:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "lzqDD"

    invoke-static {v3, v2}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "type:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    sget v2, Lcn/powervision/upgrade/R$id;->success_layout:I

    invoke-virtual {p0, v2}, Lcn/powervision/upgrade/activity/FirmWareUpgradeFinishActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcn/powervision/upgrade/activity/FirmWareUpgradeFinishActivity;->successLayout:Landroid/view/View;

    .line 93
    sget v2, Lcn/powervision/upgrade/R$id;->fail_layout:I

    invoke-virtual {p0, v2}, Lcn/powervision/upgrade/activity/FirmWareUpgradeFinishActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcn/powervision/upgrade/activity/FirmWareUpgradeFinishActivity;->failedLayout:Landroid/view/View;

    .line 94
    sget v2, Lcn/powervision/upgrade/R$id;->main_version:I

    invoke-virtual {p0, v2}, Lcn/powervision/upgrade/activity/FirmWareUpgradeFinishActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcn/powervision/upgrade/activity/FirmWareUpgradeFinishActivity;->mainVersion:Landroid/widget/TextView;

    .line 95
    sget v2, Lcn/powervision/upgrade/R$id;->remote_version:I

    invoke-virtual {p0, v2}, Lcn/powervision/upgrade/activity/FirmWareUpgradeFinishActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcn/powervision/upgrade/activity/FirmWareUpgradeFinishActivity;->remoteVersion:Landroid/widget/TextView;

    .line 96
    sget v2, Lcn/powervision/upgrade/R$id;->battary_version:I

    invoke-virtual {p0, v2}, Lcn/powervision/upgrade/activity/FirmWareUpgradeFinishActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcn/powervision/upgrade/activity/FirmWareUpgradeFinishActivity;->batteryVersion:Landroid/widget/TextView;

    .line 97
    sget v2, Lcn/powervision/upgrade/R$id;->upgrade_completed_bt:I

    invoke-virtual {p0, v2}, Lcn/powervision/upgrade/activity/FirmWareUpgradeFinishActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcn/powervision/upgrade/activity/FirmWareUpgradeFinishActivity$3;

    invoke-direct {v3, p0, v1}, Lcn/powervision/upgrade/activity/FirmWareUpgradeFinishActivity$3;-><init>(Lcn/powervision/upgrade/activity/FirmWareUpgradeFinishActivity;I)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-nez v0, :cond_0

    .line 110
    invoke-direct {p0, v1}, Lcn/powervision/upgrade/activity/FirmWareUpgradeFinishActivity;->initSuccess(I)V

    goto :goto_0

    .line 112
    :cond_0
    invoke-direct {p0, p1}, Lcn/powervision/upgrade/activity/FirmWareUpgradeFinishActivity;->initFailed(I)V

    :goto_0
    return-void
.end method

.method public showloadingDialog(Ljava/lang/String;I)V
    .locals 2

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showloadingDialog who:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "lzqFirm"

    invoke-static {v0, p2}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    new-instance p2, Lcn/powervision/upgrade/activity/FirmWareUpgradeFinishActivity$1;

    invoke-direct {p2, p0, p1}, Lcn/powervision/upgrade/activity/FirmWareUpgradeFinishActivity$1;-><init>(Lcn/powervision/upgrade/activity/FirmWareUpgradeFinishActivity;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcn/powervision/upgrade/activity/FirmWareUpgradeFinishActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
