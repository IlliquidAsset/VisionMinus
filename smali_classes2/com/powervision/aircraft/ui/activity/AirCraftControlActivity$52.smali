.class Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$52;
.super Ljava/lang/Object;
.source "AirCraftControlActivity.java"

# interfaces
.implements Lcom/powervision/base/views/AirDialog$DialogClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->showWaterDialog()V
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

    .line 5204
    iput-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$52;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    iput-object p2, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$52;->val$dialog:Lcom/powervision/base/views/AirDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 0

    return-void
.end method

.method public onConfirm()V
    .locals 1

    .line 5207
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$52;->val$dialog:Lcom/powervision/base/views/AirDialog;

    invoke-virtual {v0}, Lcom/powervision/base/views/AirDialog;->dismiss()V

    return-void
.end method
