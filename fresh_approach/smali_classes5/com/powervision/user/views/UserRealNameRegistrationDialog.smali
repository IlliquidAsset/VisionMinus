.class public Lcom/powervision/user/views/UserRealNameRegistrationDialog;
.super Landroid/app/Dialog;
.source "UserRealNameRegistrationDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field private mDisposable:Lio/reactivex/disposables/Disposable;

.field private mIvClose:Landroid/widget/ImageView;

.field private mTipDialog:Lcom/powervision/base/views/TipDialog;

.field private mTvRegister:Landroid/widget/TextView;

.field private mTvWork:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 42
    sget v0, Lcom/powervision/user/R$style;->user_noBgDialog:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method private initListener()V
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/powervision/user/views/UserRealNameRegistrationDialog;->mTvWork:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    iget-object v0, p0, Lcom/powervision/user/views/UserRealNameRegistrationDialog;->mTvRegister:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    iget-object v0, p0, Lcom/powervision/user/views/UserRealNameRegistrationDialog;->mIvClose:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    invoke-virtual {p0, p0}, Lcom/powervision/user/views/UserRealNameRegistrationDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method private initView()V
    .locals 8

    .line 57
    sget v0, Lcom/powervision/user/R$id;->tv_user_dialog_rnr_work:I

    invoke-virtual {p0, v0}, Lcom/powervision/user/views/UserRealNameRegistrationDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/powervision/user/views/UserRealNameRegistrationDialog;->mTvWork:Landroid/widget/TextView;

    .line 58
    sget v0, Lcom/powervision/user/R$id;->tv_user_dialog_rnr_register:I

    invoke-virtual {p0, v0}, Lcom/powervision/user/views/UserRealNameRegistrationDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/powervision/user/views/UserRealNameRegistrationDialog;->mTvRegister:Landroid/widget/TextView;

    .line 59
    sget v0, Lcom/powervision/user/R$id;->iv_user_dialog_rnr_close:I

    invoke-virtual {p0, v0}, Lcom/powervision/user/views/UserRealNameRegistrationDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/powervision/user/views/UserRealNameRegistrationDialog;->mIvClose:Landroid/widget/ImageView;

    .line 61
    iget-object v0, p0, Lcom/powervision/user/views/UserRealNameRegistrationDialog;->mTvWork:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setFlags(I)V

    .line 63
    iget-object v0, p0, Lcom/powervision/user/views/UserRealNameRegistrationDialog;->mTvWork:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 65
    invoke-direct {p0}, Lcom/powervision/user/views/UserRealNameRegistrationDialog;->initListener()V

    .line 67
    invoke-direct {p0}, Lcom/powervision/user/views/UserRealNameRegistrationDialog;->workCloseShow()V

    .line 69
    new-instance v0, Lcom/powervision/base/views/TipDialog;

    invoke-virtual {p0}, Lcom/powervision/user/views/UserRealNameRegistrationDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0}, Lcom/powervision/user/views/UserRealNameRegistrationDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/powervision/user/R$string;->AP03_Verified_5:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v4, ""

    const/4 v6, 0x3

    const/4 v7, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/powervision/base/views/TipDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/powervision/base/views/TipDialog$DialogTipClickListener;)V

    iput-object v0, p0, Lcom/powervision/user/views/UserRealNameRegistrationDialog;->mTipDialog:Lcom/powervision/base/views/TipDialog;

    .line 72
    invoke-virtual {p0}, Lcom/powervision/user/views/UserRealNameRegistrationDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x11

    .line 74
    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    const/4 v1, -0x1

    const/4 v2, -0x2

    .line 75
    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    .line 76
    sget v1, Lcom/powervision/user/R$style;->AnimBottom:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    :cond_0
    return-void
.end method

.method private workCloseShow()V
    .locals 5

    .line 94
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x1

    invoke-static {v1, v2, v3, v4, v0}, Lio/reactivex/Observable;->interval(JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v0

    const-wide/16 v1, 0x6

    .line 95
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->take(J)Lio/reactivex/Observable;

    move-result-object v0

    .line 96
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 97
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/powervision/user/views/-$$Lambda$UserRealNameRegistrationDialog$hUPlrgVsqaq6Sk3OHqbaWR4x3gg;

    invoke-direct {v1, p0}, Lcom/powervision/user/views/-$$Lambda$UserRealNameRegistrationDialog$hUPlrgVsqaq6Sk3OHqbaWR4x3gg;-><init>(Lcom/powervision/user/views/UserRealNameRegistrationDialog;)V

    .line 98
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/user/views/UserRealNameRegistrationDialog;->mDisposable:Lio/reactivex/disposables/Disposable;

    return-void
.end method


# virtual methods
.method public synthetic lambda$workCloseShow$0$UserRealNameRegistrationDialog(Ljava/lang/Long;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 99
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x5

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    .line 100
    iget-object p1, p0, Lcom/powervision/user/views/UserRealNameRegistrationDialog;->mIvClose:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 101
    iget-object p1, p0, Lcom/powervision/user/views/UserRealNameRegistrationDialog;->mDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result p1

    if-nez p1, :cond_0

    .line 102
    iget-object p1, p0, Lcom/powervision/user/views/UserRealNameRegistrationDialog;->mDisposable:Lio/reactivex/disposables/Disposable;

    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->dispose()V

    const/4 p1, 0x0

    .line 103
    iput-object p1, p0, Lcom/powervision/user/views/UserRealNameRegistrationDialog;->mDisposable:Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 111
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 112
    sget v0, Lcom/powervision/user/R$id;->tv_user_dialog_rnr_work:I

    if-ne v0, p1, :cond_0

    .line 113
    invoke-virtual {p0}, Lcom/powervision/user/views/UserRealNameRegistrationDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/user/ui/activity/UserRealNameIntroductionActivity;->goInTo(Landroid/content/Context;)V

    .line 115
    :cond_0
    sget v0, Lcom/powervision/user/R$id;->tv_user_dialog_rnr_register:I

    if-ne v0, p1, :cond_1

    .line 116
    invoke-virtual {p0}, Lcom/powervision/user/views/UserRealNameRegistrationDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/user/ui/activity/UserRealNameRegisterActivity;->goInTo(Landroid/content/Context;)V

    .line 118
    :cond_1
    sget v0, Lcom/powervision/user/R$id;->iv_user_dialog_rnr_close:I

    if-ne v0, p1, :cond_2

    .line 119
    invoke-virtual {p0}, Lcom/powervision/user/views/UserRealNameRegistrationDialog;->dismiss()V

    :cond_2
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 47
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 48
    sget p1, Lcom/powervision/user/R$layout;->user_dialog_real_name_registration:I

    invoke-virtual {p0, p1}, Lcom/powervision/user/views/UserRealNameRegistrationDialog;->setContentView(I)V

    const/4 p1, 0x0

    .line 49
    invoke-virtual {p0, p1}, Lcom/powervision/user/views/UserRealNameRegistrationDialog;->setCancelable(Z)V

    .line 50
    invoke-direct {p0}, Lcom/powervision/user/views/UserRealNameRegistrationDialog;->initView()V

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 125
    iget-object p1, p0, Lcom/powervision/user/views/UserRealNameRegistrationDialog;->mTipDialog:Lcom/powervision/base/views/TipDialog;

    if-eqz p1, :cond_0

    .line 126
    invoke-virtual {p1}, Lcom/powervision/base/views/TipDialog;->show()V

    :cond_0
    return-void
.end method
