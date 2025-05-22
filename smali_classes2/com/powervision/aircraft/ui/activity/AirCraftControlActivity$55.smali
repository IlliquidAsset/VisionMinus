.class Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$55;
.super Ljava/lang/Object;
.source "AirCraftControlActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getRemainingRtlTime(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

.field final synthetic val$second:I


# direct methods
.method constructor <init>(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;I)V
    .locals 0

    .line 5426
    iput-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$55;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    iput p2, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$55;->val$second:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$run$0(ILjava/lang/Long;)Ljava/lang/Integer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5464
    invoke-virtual {p1}, Ljava/lang/Long;->intValue()I

    move-result p1

    sub-int/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public synthetic lambda$run$1$AirCraftControlActivity$55(Landroidx/appcompat/app/AlertDialog;Ljava/lang/Integer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5466
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "integer = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 5467
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5012\u8ba1\u65f6 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/base/utils/WriteTxtUtil;->writeTxtToFile(Ljava/lang/String;)V

    .line 5468
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget-object v1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$55;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    sget v2, Lcom/powervision/aircraft/R$string;->AP03_AutoReturn_9_1:I

    invoke-virtual {v1, v2}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 5470
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-nez p2, :cond_0

    .line 5471
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->dismiss()V

    .line 5472
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$55;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$13500(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lcom/powervision/base/base/BasePresenter;

    move-result-object p1

    check-cast p1, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;

    invoke-virtual {p1}, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->setLowPowerReturn()V

    const-string p1, "\u5012\u8ba1\u65f6\u7ed3\u675f\uff0c\u8fd4\u822a"

    .line 5473
    invoke-static {p1}, Lcom/powervision/base/utils/WriteTxtUtil;->writeTxtToFile(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public run()V
    .locals 9

    .line 5429
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$55;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 5430
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    .line 5431
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x400

    invoke-virtual {v2, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 5433
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget-object v3, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$55;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    sget v4, Lcom/powervision/aircraft/R$string;->AP03_AutoReturn_9_1:I

    invoke-virtual {v3, v4}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    const/16 v6, 0xa

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v2, v3, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 5434
    iget-object v1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$55;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    sget v2, Lcom/powervision/aircraft/R$string;->AP03_AutoReturn_10:I

    invoke-virtual {v1, v2}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 5435
    iget-object v1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$55;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    sget v2, Lcom/powervision/aircraft/R$string;->AP03_AI_2:I

    invoke-virtual {v1, v2}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$55$1;

    invoke-direct {v2, p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$55$1;-><init>(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$55;)V

    const/4 v3, -0x2

    invoke-virtual {v0, v3, v1, v2}, Landroidx/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 5446
    iget-object v1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$55;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    sget v2, Lcom/powervision/aircraft/R$string;->AP03_AutoReturn_2:I

    .line 5447
    invoke-virtual {v1, v2}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$55$2;

    invoke-direct {v2, p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$55$2;-><init>(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$55;)V

    const/4 v3, -0x1

    .line 5446
    invoke-virtual {v0, v3, v1, v2}, Landroidx/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const-string v1, "\u663e\u793a\u51fa\u4f4e\u7535\u8fd4\u822a\u63d0\u793a\u6846"

    .line 5459
    invoke-static {v1}, Lcom/powervision/base/utils/WriteTxtUtil;->writeTxtToFile(Ljava/lang/String;)V

    .line 5460
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->show()V

    .line 5461
    iget-object v1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$55;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x1

    invoke-static {v5, v6, v7, v8, v2}, Lio/reactivex/Observable;->interval(JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v2

    .line 5462
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->computation()Lio/reactivex/Scheduler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v2

    .line 5463
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v2

    iget v3, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$55;->val$second:I

    new-instance v5, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$55$Oa5nHEjICe0lkUm3Erqu_a-wUW0;

    invoke-direct {v5, v3}, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$55$Oa5nHEjICe0lkUm3Erqu_a-wUW0;-><init>(I)V

    .line 5464
    invoke-virtual {v2, v5}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v2

    iget v3, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$55;->val$second:I

    add-int/2addr v3, v4

    int-to-long v3, v3

    .line 5465
    invoke-virtual {v2, v3, v4}, Lio/reactivex/Observable;->take(J)Lio/reactivex/Observable;

    move-result-object v2

    new-instance v3, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$55$Xb7Poc-w-ArQbqxOrUC0Z9mHii8;

    invoke-direct {v3, p0, v0}, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$55$Xb7Poc-w-ArQbqxOrUC0Z9mHii8;-><init>(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$55;Landroidx/appcompat/app/AlertDialog;)V

    invoke-virtual {v2, v3}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 5461
    invoke-static {v1, v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$13302(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;

    return-void
.end method
