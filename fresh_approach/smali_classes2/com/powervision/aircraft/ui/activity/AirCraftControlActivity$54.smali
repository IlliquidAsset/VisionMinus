.class Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$54;
.super Ljava/lang/Object;
.source "AirCraftControlActivity.java"

# interfaces
.implements Lcom/powervision/base/views/AirDialog$DialogClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->showChangeWaterModeDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

.field final synthetic val$dialog:Lcom/powervision/base/views/AirDialog;


# direct methods
.method constructor <init>(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;Lcom/powervision/base/views/AirDialog;)V
    .locals 0

    .line 5250
    iput-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$54;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    iput-object p2, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$54;->val$dialog:Lcom/powervision/base/views/AirDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    .line 5263
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$54;->val$dialog:Lcom/powervision/base/views/AirDialog;

    invoke-virtual {v0}, Lcom/powervision/base/views/AirDialog;->dismiss()V

    .line 5264
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$54;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$13100(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$54;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$13100(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5265
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$54;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$13100(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_0
    return-void
.end method

.method public onConfirm()V
    .locals 2

    .line 5253
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$54;->val$dialog:Lcom/powervision/base/views/AirDialog;

    invoke-virtual {v0}, Lcom/powervision/base/views/AirDialog;->dismiss()V

    .line 5254
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$54;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$12802(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;I)I

    .line 5255
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$54;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$13000(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lcom/powervision/base/base/BasePresenter;

    move-result-object v0

    check-cast v0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;

    invoke-virtual {v0, v1}, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->setWaterMode(I)V

    .line 5256
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$54;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$13100(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$54;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$13100(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5257
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$54;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$13100(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_0
    return-void
.end method
