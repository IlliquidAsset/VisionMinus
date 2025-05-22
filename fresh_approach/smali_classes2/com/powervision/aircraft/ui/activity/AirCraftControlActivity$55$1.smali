.class Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$55$1;
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

    .line 5436
    iput-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$55$1;->this$1:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$55;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 5439
    iget-object p2, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$55$1;->this$1:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$55;

    iget-object p2, p2, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$55;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {p2}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$13200(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lcom/powervision/base/base/BasePresenter;

    move-result-object p2

    check-cast p2, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;

    invoke-virtual {p2}, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->setRefuseLowPowerReturn()V

    .line 5440
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 5441
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$55$1;->this$1:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$55;

    iget-object p1, p1, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$55;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$13300(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$55$1;->this$1:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$55;

    iget-object p1, p1, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$55;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$13300(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result p1

    if-nez p1, :cond_0

    .line 5442
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$55$1;->this$1:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$55;

    iget-object p1, p1, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$55;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$13300(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_0
    return-void
.end method
