.class public Lcn/powervision/flightlog/fragments/SyncFlightLogFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "SyncFlightLogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/powervision/flightlog/fragments/SyncFlightLogFragment$OnCleanAllCsvListener;,
        Lcn/powervision/flightlog/fragments/SyncFlightLogFragment$OnGetServerResultListener;
    }
.end annotation


# instance fields
.field isSynchronizing:Z

.field private mAllSync:Landroid/widget/RadioButton;

.field private mCancleBt:Landroid/widget/TextView;

.field private mCleanCacheTv:Landroid/widget/TextView;

.field private mHalfYearSync:Landroid/widget/RadioButton;

.field private mOnCleanAllCsvListener:Lcn/powervision/flightlog/fragments/SyncFlightLogFragment$OnCleanAllCsvListener;

.field private mOnGetServerResultListener:Lcn/powervision/flightlog/fragments/SyncFlightLogFragment$OnGetServerResultListener;

.field private mOneSync:Landroid/widget/RadioButton;

.field private mRadioGroup:Landroid/widget/RadioGroup;

.field private mStartSyncBt:Landroid/widget/TextView;

.field private syncType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 66
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    const/4 v0, 0x0

    .line 45
    iput v0, p0, Lcn/powervision/flightlog/fragments/SyncFlightLogFragment;->syncType:I

    .line 47
    iput-boolean v0, p0, Lcn/powervision/flightlog/fragments/SyncFlightLogFragment;->isSynchronizing:Z

    return-void
.end method

.method static synthetic access$002(Lcn/powervision/flightlog/fragments/SyncFlightLogFragment;I)I
    .locals 0

    .line 40
    iput p1, p0, Lcn/powervision/flightlog/fragments/SyncFlightLogFragment;->syncType:I

    return p1
.end method

.method static synthetic access$100(Lcn/powervision/flightlog/fragments/SyncFlightLogFragment;)Landroid/widget/RadioButton;
    .locals 0

    .line 40
    iget-object p0, p0, Lcn/powervision/flightlog/fragments/SyncFlightLogFragment;->mOneSync:Landroid/widget/RadioButton;

    return-object p0
.end method

.method static synthetic access$200(Lcn/powervision/flightlog/fragments/SyncFlightLogFragment;)Landroid/widget/RadioButton;
    .locals 0

    .line 40
    iget-object p0, p0, Lcn/powervision/flightlog/fragments/SyncFlightLogFragment;->mHalfYearSync:Landroid/widget/RadioButton;

    return-object p0
.end method

.method static synthetic access$300(Lcn/powervision/flightlog/fragments/SyncFlightLogFragment;)Landroid/widget/RadioButton;
    .locals 0

    .line 40
    iget-object p0, p0, Lcn/powervision/flightlog/fragments/SyncFlightLogFragment;->mAllSync:Landroid/widget/RadioButton;

    return-object p0
.end method

.method static synthetic access$400(Lcn/powervision/flightlog/fragments/SyncFlightLogFragment;Ljava/lang/String;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcn/powervision/flightlog/fragments/SyncFlightLogFragment;->parseUserAllDataJson(Ljava/lang/String;)V

    return-void
.end method

.method private cleanAllData()V
    .locals 7

    .line 132
    invoke-virtual {p0}, Lcn/powervision/flightlog/fragments/SyncFlightLogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcn/powervision/flightlog/R$string;->AP03_Msg_1:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 135
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcn/powervision/flightlog/R$string;->AP03_FlightLog_53:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 136
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcn/powervision/flightlog/R$string;->AP03_Activation_6:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 137
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcn/powervision/flightlog/R$string;->AP03_Activation_9:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcn/powervision/flightlog/fragments/-$$Lambda$SyncFlightLogFragment$xllz-mir5mZy_fJjGEw0F9mPRsc;

    invoke-direct {v5, p0}, Lcn/powervision/flightlog/fragments/-$$Lambda$SyncFlightLogFragment$xllz-mir5mZy_fJjGEw0F9mPRsc;-><init>(Lcn/powervision/flightlog/fragments/SyncFlightLogFragment;)V

    const/4 v6, 0x0

    .line 134
    invoke-static/range {v0 .. v6}, Lcom/powervision/base/utils/DialogUtils;->customDialog(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/powervision/base/utils/DialogUtils$OnClickListener;Lcom/powervision/base/utils/DialogUtils$OnClickListener;)Landroidx/appcompat/app/AlertDialog;

    :cond_0
    return-void
.end method

.method private executeSyncData()V
    .locals 2

    .line 147
    invoke-virtual {p0}, Lcn/powervision/flightlog/fragments/SyncFlightLogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/powervision/flightlog/R$string;->AP03_ConnectGuide_67:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 148
    iget-object v1, p0, Lcn/powervision/flightlog/fragments/SyncFlightLogFragment;->mStartSyncBt:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    invoke-virtual {p0}, Lcn/powervision/flightlog/fragments/SyncFlightLogFragment;->dismiss()V

    return-void

    .line 152
    :cond_0
    iget-boolean v0, p0, Lcn/powervision/flightlog/fragments/SyncFlightLogFragment;->isSynchronizing:Z

    if-eqz v0, :cond_1

    return-void

    .line 155
    :cond_1
    invoke-static {}, Lcom/powervision/base/utils/NetUtils;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 156
    iput-boolean v0, p0, Lcn/powervision/flightlog/fragments/SyncFlightLogFragment;->isSynchronizing:Z

    .line 157
    iget-object v0, p0, Lcn/powervision/flightlog/fragments/SyncFlightLogFragment;->mStartSyncBt:Landroid/widget/TextView;

    sget v1, Lcn/powervision/flightlog/R$string;->AP03_FlightLog_52:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 158
    invoke-static {}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getInstance()Lcom/powervision/base/utils/SharedPreferencesUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getUserInfo()Lcom/powervision/base/model/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/base/model/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/powervision/flightlog/fragments/SyncFlightLogFragment;->getServerAllFileData(Ljava/lang/String;)V

    goto :goto_0

    .line 160
    :cond_2
    invoke-virtual {p0}, Lcn/powervision/flightlog/fragments/SyncFlightLogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 162
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/powervision/flightlog/R$string;->APP_Msg_5:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/base/utils/ToastUtils;->shortToast(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private getServerAllFileData(Ljava/lang/String;)V
    .locals 3

    .line 168
    new-instance v0, Lokhttp3/OkHttpClient;

    invoke-direct {v0}, Lokhttp3/OkHttpClient;-><init>()V

    .line 169
    new-instance v1, Lokhttp3/FormBody$Builder;

    invoke-direct {v1}, Lokhttp3/FormBody$Builder;-><init>()V

    const-string v2, "userId"

    .line 170
    invoke-virtual {v1, v2, p1}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    move-result-object p1

    iget v1, p0, Lcn/powervision/flightlog/fragments/SyncFlightLogFragment;->syncType:I

    .line 171
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "time"

    invoke-virtual {p1, v2, v1}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/FormBody$Builder;->build()Lokhttp3/FormBody;

    move-result-object p1

    .line 172
    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    .line 173
    invoke-virtual {v1, p1}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p1

    const-string v1, "http://supplier.powervision.me:9991/queryUserFlyLogs"

    .line 174
    invoke-virtual {p1, v1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    .line 176
    invoke-virtual {v0, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    new-instance v0, Lcn/powervision/flightlog/fragments/SyncFlightLogFragment$2;

    invoke-direct {v0, p0}, Lcn/powervision/flightlog/fragments/SyncFlightLogFragment$2;-><init>(Lcn/powervision/flightlog/fragments/SyncFlightLogFragment;)V

    invoke-interface {p1, v0}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    return-void
.end method

.method private initListener()V
    .locals 2

    .line 76
    iget-object v0, p0, Lcn/powervision/flightlog/fragments/SyncFlightLogFragment;->mCancleBt:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    iget-object v0, p0, Lcn/powervision/flightlog/fragments/SyncFlightLogFragment;->mStartSyncBt:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    iget-object v0, p0, Lcn/powervision/flightlog/fragments/SyncFlightLogFragment;->mCleanCacheTv:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    iget-object v0, p0, Lcn/powervision/flightlog/fragments/SyncFlightLogFragment;->mRadioGroup:Landroid/widget/RadioGroup;

    new-instance v1, Lcn/powervision/flightlog/fragments/SyncFlightLogFragment$1;

    invoke-direct {v1, p0}, Lcn/powervision/flightlog/fragments/SyncFlightLogFragment$1;-><init>(Lcn/powervision/flightlog/fragments/SyncFlightLogFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    return-void
.end method

.method private initViews(Landroid/view/View;)V
    .locals 1

    .line 109
    sget v0, Lcn/powervision/flightlog/R$id;->sync_cancle_bt:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/powervision/flightlog/fragments/SyncFlightLogFragment;->mCancleBt:Landroid/widget/TextView;

    .line 110
    sget v0, Lcn/powervision/flightlog/R$id;->sync_start_bt:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/powervision/flightlog/fragments/SyncFlightLogFragment;->mStartSyncBt:Landroid/widget/TextView;

    .line 111
    sget v0, Lcn/powervision/flightlog/R$id;->sync_group:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcn/powervision/flightlog/fragments/SyncFlightLogFragment;->mRadioGroup:Landroid/widget/RadioGroup;

    .line 112
    sget v0, Lcn/powervision/flightlog/R$id;->sub_sync_half_year:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcn/powervision/flightlog/fragments/SyncFlightLogFragment;->mHalfYearSync:Landroid/widget/RadioButton;

    .line 113
    sget v0, Lcn/powervision/flightlog/R$id;->sub_sync_one:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcn/powervision/flightlog/fragments/SyncFlightLogFragment;->mOneSync:Landroid/widget/RadioButton;

    .line 114
    sget v0, Lcn/powervision/flightlog/R$id;->sub_sync_all:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcn/powervision/flightlog/fragments/SyncFlightLogFragment;->mAllSync:Landroid/widget/RadioButton;

    .line 115
    sget v0, Lcn/powervision/flightlog/R$id;->flightlog_clean_all_data_tv:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcn/powervision/flightlog/fragments/SyncFlightLogFragment;->mCleanCacheTv:Landroid/widget/TextView;

    return-void
.end method

.method public static newInstance()Lcn/powervision/flightlog/fragments/SyncFlightLogFragment;
    .locals 1

    .line 71
    new-instance v0, Lcn/powervision/flightlog/fragments/SyncFlightLogFragment;

    invoke-direct {v0}, Lcn/powervision/flightlog/fragments/SyncFlightLogFragment;-><init>()V

    return-object v0
.end method

.method private parseUserAllDataJson(Ljava/lang/String;)V
    .locals 1

    .line 195
    new-instance v0, Lcn/powervision/flightlog/fragments/-$$Lambda$SyncFlightLogFragment$YJOAabOjT4KQuuKT4PLI0NHO81w;

    invoke-direct {v0, p0, p1}, Lcn/powervision/flightlog/fragments/-$$Lambda$SyncFlightLogFragment$YJOAabOjT4KQuuKT4PLI0NHO81w;-><init>(Lcn/powervision/flightlog/fragments/SyncFlightLogFragment;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/lzy/okgo/utils/HttpUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$cleanAllData$0$SyncFlightLogFragment(Landroid/view/View;)V
    .locals 0

    .line 139
    iget-object p1, p0, Lcn/powervision/flightlog/fragments/SyncFlightLogFragment;->mOnCleanAllCsvListener:Lcn/powervision/flightlog/fragments/SyncFlightLogFragment$OnCleanAllCsvListener;

    if-eqz p1, :cond_0

    .line 140
    invoke-interface {p1}, Lcn/powervision/flightlog/fragments/SyncFlightLogFragment$OnCleanAllCsvListener;->onCleanAllCsvFile()V

    :cond_0
    return-void
.end method

.method public synthetic lambda$parseUserAllDataJson$1$SyncFlightLogFragment(Ljava/lang/String;)V
    .locals 3

    .line 196
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 197
    const-class v1, Lcom/powervision/oss/bean/FlightLogUserAllData;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/powervision/oss/bean/FlightLogUserAllData;

    .line 198
    invoke-virtual {p1}, Lcom/powervision/oss/bean/FlightLogUserAllData;->getStatus()I

    move-result v0

    const-string v1, "log_request"

    if-nez v0, :cond_0

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  \u670d\u52a1\u5668\u8fd4\u56de\u540c\u6b65\u7ed3\u679c getFlyLogs().size="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    invoke-virtual {p1}, Lcom/powervision/oss/bean/FlightLogUserAllData;->getFlyLogs()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 199
    invoke-static {v1, v0}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    iget-object v0, p0, Lcn/powervision/flightlog/fragments/SyncFlightLogFragment;->mOnGetServerResultListener:Lcn/powervision/flightlog/fragments/SyncFlightLogFragment$OnGetServerResultListener;

    if-eqz v0, :cond_1

    .line 202
    invoke-interface {v0, p1}, Lcn/powervision/flightlog/fragments/SyncFlightLogFragment$OnGetServerResultListener;->onGetServerResult(Lcom/powervision/oss/bean/FlightLogUserAllData;)V

    goto :goto_0

    .line 205
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "..\u65e5\u5fd7\u670d\u52a1\u5668\u8fd4\u56de\u8bf7\u6c42\u5931\u8d25...getStatus()= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/powervision/oss/bean/FlightLogUserAllData;->getStatus()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 120
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 121
    sget v0, Lcn/powervision/flightlog/R$id;->sync_cancle_bt:I

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 122
    iput-boolean p1, p0, Lcn/powervision/flightlog/fragments/SyncFlightLogFragment;->isSynchronizing:Z

    .line 123
    invoke-virtual {p0}, Lcn/powervision/flightlog/fragments/SyncFlightLogFragment;->dismiss()V

    goto :goto_0

    .line 124
    :cond_0
    sget v0, Lcn/powervision/flightlog/R$id;->sync_start_bt:I

    if-ne p1, v0, :cond_1

    .line 125
    invoke-direct {p0}, Lcn/powervision/flightlog/fragments/SyncFlightLogFragment;->executeSyncData()V

    goto :goto_0

    .line 126
    :cond_1
    sget v0, Lcn/powervision/flightlog/R$id;->flightlog_clean_all_data_tv:I

    if-ne p1, v0, :cond_2

    .line 127
    invoke-direct {p0}, Lcn/powervision/flightlog/fragments/SyncFlightLogFragment;->cleanAllData()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 54
    sget p3, Lcn/powervision/flightlog/R$layout;->flightlog_dialog_sync_date_layout:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 55
    invoke-virtual {p0, v0}, Lcn/powervision/flightlog/fragments/SyncFlightLogFragment;->setCancelable(Z)V

    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lcn/powervision/flightlog/fragments/SyncFlightLogFragment;->initViews(Landroid/view/View;)V

    .line 62
    invoke-direct {p0}, Lcn/powervision/flightlog/fragments/SyncFlightLogFragment;->initListener()V

    .line 63
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/DialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method

.method public setOnCleanAllCsvListener(Lcn/powervision/flightlog/fragments/SyncFlightLogFragment$OnCleanAllCsvListener;)V
    .locals 0

    .line 222
    iput-object p1, p0, Lcn/powervision/flightlog/fragments/SyncFlightLogFragment;->mOnCleanAllCsvListener:Lcn/powervision/flightlog/fragments/SyncFlightLogFragment$OnCleanAllCsvListener;

    return-void
.end method

.method public setOnGetServerResultListener(Lcn/powervision/flightlog/fragments/SyncFlightLogFragment$OnGetServerResultListener;)V
    .locals 0

    .line 218
    iput-object p1, p0, Lcn/powervision/flightlog/fragments/SyncFlightLogFragment;->mOnGetServerResultListener:Lcn/powervision/flightlog/fragments/SyncFlightLogFragment$OnGetServerResultListener;

    return-void
.end method

.method public showSyncComplete()V
    .locals 2

    const-string v0, "FlightLogActivity"

    const-string v1, "....SyncFlightLogFragment reset sync button "

    .line 212
    invoke-static {v0, v1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 213
    iput-boolean v0, p0, Lcn/powervision/flightlog/fragments/SyncFlightLogFragment;->isSynchronizing:Z

    .line 214
    iget-object v0, p0, Lcn/powervision/flightlog/fragments/SyncFlightLogFragment;->mStartSyncBt:Landroid/widget/TextView;

    sget v1, Lcn/powervision/flightlog/R$string;->AP03_ConnectGuide_67:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method
