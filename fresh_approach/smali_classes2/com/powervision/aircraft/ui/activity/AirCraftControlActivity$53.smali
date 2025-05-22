.class Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$53;
.super Ljava/lang/Object;
.source "AirCraftControlActivity.java"

# interfaces
.implements Lcom/powervision/base/views/AirDialog$DialogClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->showChangeAirModeDialog()V
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

    .line 5226
    iput-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$53;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    iput-object p2, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$53;->val$dialog:Lcom/powervision/base/views/AirDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    .line 5236
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$53;->val$dialog:Lcom/powervision/base/views/AirDialog;

    invoke-virtual {v0}, Lcom/powervision/base/views/AirDialog;->dismiss()V

    return-void
.end method

.method public onConfirm()V
    .locals 2

    .line 5229
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$53;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$12802(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;I)I

    .line 5230
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$53;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$12900(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lcom/powervision/base/base/BasePresenter;

    move-result-object v0

    check-cast v0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;

    invoke-virtual {v0, v1}, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->setWaterMode(I)V

    .line 5231
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$53;->val$dialog:Lcom/powervision/base/views/AirDialog;

    invoke-virtual {v0}, Lcom/powervision/base/views/AirDialog;->dismiss()V

    return-void
.end method
