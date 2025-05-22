.class Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$23$1;
.super Ljava/lang/Object;
.source "NewHandheldDeviceActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$23;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$23;


# direct methods
.method constructor <init>(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$23;)V
    .locals 0

    .line 2912
    iput-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$23$1;->this$1:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$23;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 2916
    iget-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$23$1;->this$1:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$23;

    iget-object p1, p1, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$23;->this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    invoke-static {p1}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->access$4600(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->dismiss()V

    return-void
.end method
