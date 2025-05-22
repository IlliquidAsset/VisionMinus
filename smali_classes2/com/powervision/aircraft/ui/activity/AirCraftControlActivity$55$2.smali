.class Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$55$2;
.super Ljava/lang/Object;
.source "AirCraftControlActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$55;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$55;


# direct methods
.method constructor <init>(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$55;)V
    .locals 0

    .line 5448
    iput-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$55$2;->this$1:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$55;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p2, "\u70b9\u51fb\u786e\u5b9a\u4f4e\u7535\u8fd4\u822a"

    .line 5451
    invoke-static {p2}, Lcom/powervision/base/utils/WriteTxtUtil;->writeTxtToFile(Ljava/lang/String;)V

    .line 5452
    iget-object p2, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$55$2;->this$1:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$55;

    iget-object p2, p2, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$55;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {p2}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$13400(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lcom/powervision/base/base/BasePresenter;

    move-result-object p2

    check-cast p2, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;

    invoke-virtual {p2}, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->setLowPowerReturn()V

    .line 5453
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 5454
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$55$2;->this$1:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$55;

    iget-object p1, p1, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$55;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$13300(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$55$2;->this$1:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$55;

    iget-object p1, p1, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$55;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$13300(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result p1

    if-nez p1, :cond_0

    .line 5455
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$55$2;->this$1:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$55;

    iget-object p1, p1, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$55;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$13300(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_0
    return-void
.end method
