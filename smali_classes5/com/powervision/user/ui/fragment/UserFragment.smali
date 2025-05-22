.class public Lcom/powervision/user/ui/fragment/UserFragment;
.super Lcom/powervision/base/base/BaseFragment;
.source "UserFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "UserFragment"


# instance fields
.field private isChina:Z

.field private mAvatar:Landroid/widget/ImageView;

.field private mModifyInfo:Landroid/widget/TextView;

.field private mNickname:Landroid/widget/TextView;

.field private mPreferencesUtils:Lcom/powervision/base/utils/SharedPreferencesUtils;

.field private mRnRegister:Landroid/widget/TextView;

.field private mTextMsg:Landroid/widget/TextView;

.field private mUserMessage:Landroid/widget/ImageView;

.field private mUserSetting:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Lcom/powervision/base/base/BaseFragment;-><init>()V

    const/4 v0, 0x0

    .line 71
    iput-boolean v0, p0, Lcom/powervision/user/ui/fragment/UserFragment;->isChina:Z

    return-void
.end method

.method private getUnReadMsg()V
    .locals 2

    const-string v0, "UserFragment"

    const-string v1, "getUnReadMsg: "

    .line 101
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    invoke-static {}, Lcom/powervision/base/net/retrofit/message/MessageManager;->getInstance()Lcom/powervision/base/net/retrofit/message/MessageManager;

    move-result-object v0

    .line 103
    invoke-virtual {v0}, Lcom/powervision/base/net/retrofit/message/MessageManager;->getMessageApi()Lcom/powervision/base/net/retrofit/message/MessageApi;

    move-result-object v0

    .line 104
    invoke-static {}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getInstance()Lcom/powervision/base/utils/SharedPreferencesUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getUserInfo()Lcom/powervision/base/model/UserInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/base/model/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/powervision/base/net/retrofit/message/MessageApi;->getMessageList(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    .line 105
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 106
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/powervision/user/ui/fragment/UserFragment$1;

    invoke-direct {v1, p0}, Lcom/powervision/user/ui/fragment/UserFragment$1;-><init>(Lcom/powervision/user/ui/fragment/UserFragment;)V

    .line 107
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method private loadUserAvatar()V
    .locals 3

    .line 220
    iget-object v0, p0, Lcom/powervision/user/ui/fragment/UserFragment;->mPreferencesUtils:Lcom/powervision/base/utils/SharedPreferencesUtils;

    const-string v1, "local_avatar"

    invoke-virtual {v0, v1}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 221
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 222
    invoke-static {}, Lcom/powervision/base/utils/ImageManager;->get()Lcom/powervision/base/utils/ImageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/powervision/user/ui/fragment/UserFragment;->mAvatar:Landroid/widget/ImageView;

    invoke-virtual {v1, v0, v2}, Lcom/powervision/base/utils/ImageManager;->loadCircleImageWithBoard(Ljava/lang/String;Landroid/widget/ImageView;)V

    goto :goto_0

    .line 224
    :cond_0
    invoke-static {}, Lcom/powervision/base/utils/ImageManager;->get()Lcom/powervision/base/utils/ImageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/user/ui/fragment/UserFragment;->mPreferencesUtils:Lcom/powervision/base/utils/SharedPreferencesUtils;

    invoke-virtual {v1}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getUserInfo()Lcom/powervision/base/model/UserInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/base/model/UserInfo;->getHeadImage()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/powervision/user/ui/fragment/UserFragment;->mAvatar:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v2}, Lcom/powervision/base/utils/ImageManager;->loadCircleImageWithBoard(Ljava/lang/String;Landroid/widget/ImageView;)V

    :goto_0
    return-void
.end method

.method public static newInstance()Lcom/powervision/user/ui/fragment/UserFragment;
    .locals 1

    .line 63
    new-instance v0, Lcom/powervision/user/ui/fragment/UserFragment;

    invoke-direct {v0}, Lcom/powervision/user/ui/fragment/UserFragment;-><init>()V

    return-object v0
.end method

.method private setMessageCount(I)V
    .locals 2

    .line 167
    iget-object v0, p0, Lcom/powervision/user/ui/fragment/UserFragment;->mTextMsg:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v0, 0x63

    if-le p1, v0, :cond_0

    .line 169
    iget-object p1, p0, Lcom/powervision/user/ui/fragment/UserFragment;->mTextMsg:Landroid/widget/TextView;

    const-string v0, ".."

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/powervision/user/ui/fragment/UserFragment;->mTextMsg:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public changeAvatar()V
    .locals 0
    .annotation runtime Lcom/powervision/base/rxbus/Subscribe;
        code = 0xc3
        threadMode = .enum Lcom/powervision/base/rxbus/ThreadMode;->MAIN:Lcom/powervision/base/rxbus/ThreadMode;
    .end annotation

    .line 207
    invoke-direct {p0}, Lcom/powervision/user/ui/fragment/UserFragment;->loadUserAvatar()V

    return-void
.end method

.method protected getLayoutResId()I
    .locals 1

    .line 68
    sget v0, Lcom/powervision/user/R$layout;->user_fragment_user:I

    return v0
.end method

.method protected initData()V
    .locals 1

    .line 88
    invoke-static {}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getInstance()Lcom/powervision/base/utils/SharedPreferencesUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/user/ui/fragment/UserFragment;->mPreferencesUtils:Lcom/powervision/base/utils/SharedPreferencesUtils;

    .line 89
    invoke-direct {p0}, Lcom/powervision/user/ui/fragment/UserFragment;->loadUserAvatar()V

    .line 90
    invoke-direct {p0}, Lcom/powervision/user/ui/fragment/UserFragment;->getUnReadMsg()V

    return-void
.end method

.method protected initView(Landroid/os/Bundle;)V
    .locals 0

    .line 75
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/powervision/base/rxbus/RxBus;->register(Ljava/lang/Object;)V

    .line 76
    sget p1, Lcom/powervision/user/R$id;->user_setting:I

    invoke-virtual {p0, p1}, Lcom/powervision/user/ui/fragment/UserFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/powervision/user/ui/fragment/UserFragment;->mUserSetting:Landroid/widget/ImageView;

    .line 77
    sget p1, Lcom/powervision/user/R$id;->user_message:I

    invoke-virtual {p0, p1}, Lcom/powervision/user/ui/fragment/UserFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/powervision/user/ui/fragment/UserFragment;->mUserMessage:Landroid/widget/ImageView;

    .line 78
    sget p1, Lcom/powervision/user/R$id;->user_avatar:I

    invoke-virtual {p0, p1}, Lcom/powervision/user/ui/fragment/UserFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/powervision/user/ui/fragment/UserFragment;->mAvatar:Landroid/widget/ImageView;

    .line 79
    sget p1, Lcom/powervision/user/R$id;->tv_nickname:I

    invoke-virtual {p0, p1}, Lcom/powervision/user/ui/fragment/UserFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/user/ui/fragment/UserFragment;->mNickname:Landroid/widget/TextView;

    .line 80
    sget p1, Lcom/powervision/user/R$id;->tv_modify_personal_info:I

    invoke-virtual {p0, p1}, Lcom/powervision/user/ui/fragment/UserFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/user/ui/fragment/UserFragment;->mModifyInfo:Landroid/widget/TextView;

    .line 81
    sget p1, Lcom/powervision/user/R$id;->tv_real_name_register:I

    invoke-virtual {p0, p1}, Lcom/powervision/user/ui/fragment/UserFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/user/ui/fragment/UserFragment;->mRnRegister:Landroid/widget/TextView;

    .line 82
    sget p1, Lcom/powervision/user/R$id;->text_msg:I

    invoke-virtual {p0, p1}, Lcom/powervision/user/ui/fragment/UserFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/user/ui/fragment/UserFragment;->mTextMsg:Landroid/widget/TextView;

    return-void
.end method

.method public synthetic lambda$setListener$0$UserFragment(Ljava/lang/Integer;)V
    .locals 2

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setListener: ------==== "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UserFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 144
    iget-object p1, p0, Lcom/powervision/user/ui/fragment/UserFragment;->mTextMsg:Landroid/widget/TextView;

    if-eqz p1, :cond_4

    .line 145
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 146
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 150
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/powervision/user/ui/fragment/UserFragment;->mTextMsg:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    add-int/2addr p1, v1

    .line 151
    invoke-direct {p0, p1}, Lcom/powervision/user/ui/fragment/UserFragment;->setMessageCount(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 153
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 147
    :cond_1
    :goto_0
    invoke-direct {p0, v1}, Lcom/powervision/user/ui/fragment/UserFragment;->setMessageCount(I)V

    goto :goto_1

    .line 157
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_3

    .line 158
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/powervision/user/ui/fragment/UserFragment;->setMessageCount(I)V

    goto :goto_1

    .line 159
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_4

    .line 160
    iget-object p1, p0, Lcom/powervision/user/ui/fragment/UserFragment;->mTextMsg:Landroid/widget/TextView;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    iget-object p1, p0, Lcom/powervision/user/ui/fragment/UserFragment;->mTextMsg:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_4
    :goto_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 193
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 194
    sget v0, Lcom/powervision/user/R$id;->user_setting:I

    if-ne p1, v0, :cond_0

    .line 195
    const-class p1, Lcom/powervision/user/ui/activity/SettingActivity;

    invoke-virtual {p0, p1}, Lcom/powervision/user/ui/fragment/UserFragment;->startActivity(Ljava/lang/Class;)V

    goto :goto_0

    .line 196
    :cond_0
    sget v0, Lcom/powervision/user/R$id;->tv_modify_personal_info:I

    if-ne p1, v0, :cond_1

    .line 197
    const-class p1, Lcom/powervision/user/ui/activity/ModifyPersonalInfoActivity;

    invoke-virtual {p0, p1}, Lcom/powervision/user/ui/fragment/UserFragment;->startActivity(Ljava/lang/Class;)V

    goto :goto_0

    .line 198
    :cond_1
    sget v0, Lcom/powervision/user/R$id;->tv_real_name_register:I

    if-ne p1, v0, :cond_2

    .line 199
    invoke-virtual {p0}, Lcom/powervision/user/ui/fragment/UserFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/powervision/user/ui/activity/UserRealNameRegisterActivity;->goInTo(Landroid/content/Context;)V

    goto :goto_0

    .line 200
    :cond_2
    sget v0, Lcom/powervision/user/R$id;->user_message:I

    if-eq p1, v0, :cond_3

    sget v0, Lcom/powervision/user/R$id;->msg_cover_view:I

    if-ne p1, v0, :cond_4

    .line 201
    :cond_3
    const-class p1, Lcom/powervision/user/ui/activity/MessageActivity;

    invoke-virtual {p0, p1}, Lcom/powervision/user/ui/fragment/UserFragment;->startActivity(Ljava/lang/Class;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 212
    invoke-super {p0}, Lcom/powervision/base/base/BaseFragment;->onDestroy()V

    .line 213
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/base/rxbus/RxBus;->unRegister(Ljava/lang/Object;)V

    return-void
.end method

.method protected onLazyLoad()V
    .locals 0

    .line 96
    invoke-super {p0}, Lcom/powervision/base/base/BaseFragment;->onLazyLoad()V

    return-void
.end method

.method public onResume()V
    .locals 5

    .line 177
    invoke-super {p0}, Lcom/powervision/base/base/BaseFragment;->onResume()V

    .line 178
    iget-object v0, p0, Lcom/powervision/user/ui/fragment/UserFragment;->mPreferencesUtils:Lcom/powervision/base/utils/SharedPreferencesUtils;

    invoke-virtual {v0}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getUserInfo()Lcom/powervision/base/model/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/base/model/UserInfo;->getNickname()Ljava/lang/String;

    move-result-object v0

    .line 179
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 180
    iget-object v1, p0, Lcom/powervision/user/ui/fragment/UserFragment;->mNickname:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    :cond_0
    invoke-static {}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getInstance()Lcom/powervision/base/utils/SharedPreferencesUtils;

    move-result-object v0

    const-string v1, "BP_PHONE_LATITUDE"

    invoke-virtual {v0, v1}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 183
    invoke-static {}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getInstance()Lcom/powervision/base/utils/SharedPreferencesUtils;

    move-result-object v1

    const-string v2, "BP_PHONE_LONGITUDE"

    invoke-virtual {v1, v2}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 184
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 185
    invoke-static {}, Lcom/powervision/base/utils/LotChinaUtil;->getInstance()Lcom/powervision/base/utils/LotChinaUtil;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/powervision/base/utils/LotChinaUtil;->isInsideChina(DD)Z

    move-result v0

    iput-boolean v0, p0, Lcom/powervision/user/ui/fragment/UserFragment;->isChina:Z

    .line 187
    :cond_1
    iget-object v0, p0, Lcom/powervision/user/ui/fragment/UserFragment;->mRnRegister:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/powervision/user/ui/fragment/UserFragment;->isChina:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 188
    invoke-direct {p0}, Lcom/powervision/user/ui/fragment/UserFragment;->loadUserAvatar()V

    return-void
.end method

.method protected setListener()V
    .locals 3

    .line 133
    invoke-super {p0}, Lcom/powervision/base/base/BaseFragment;->setListener()V

    .line 134
    iget-object v0, p0, Lcom/powervision/user/ui/fragment/UserFragment;->mUserSetting:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    iget-object v0, p0, Lcom/powervision/user/ui/fragment/UserFragment;->mUserMessage:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    iget-object v0, p0, Lcom/powervision/user/ui/fragment/UserFragment;->mModifyInfo:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    iget-object v0, p0, Lcom/powervision/user/ui/fragment/UserFragment;->mRnRegister:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    sget v0, Lcom/powervision/user/R$id;->msg_cover_view:I

    invoke-virtual {p0, v0}, Lcom/powervision/user/ui/fragment/UserFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    invoke-static {}, Lcom/powervision/base/databus/LiveDataBusX;->getInstance()Lcom/powervision/base/databus/LiveDataBusX;

    move-result-object v0

    const-class v1, Ljava/lang/Integer;

    const-string v2, "message_count"

    invoke-virtual {v0, v2, v1}, Lcom/powervision/base/databus/LiveDataBusX;->with(Ljava/lang/String;Ljava/lang/Class;)Lcom/powervision/base/databus/LiveDataBusX$BusMutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/powervision/user/ui/fragment/-$$Lambda$UserFragment$1MwevKyW2y--2CUJZfrAFXefCFY;

    invoke-direct {v1, p0}, Lcom/powervision/user/ui/fragment/-$$Lambda$UserFragment$1MwevKyW2y--2CUJZfrAFXefCFY;-><init>(Lcom/powervision/user/ui/fragment/UserFragment;)V

    invoke-virtual {v0, p0, v1}, Lcom/powervision/base/databus/LiveDataBusX$BusMutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method
