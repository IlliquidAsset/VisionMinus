.class Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$4;
.super Ljava/lang/Object;
.source "NewHandheldDeviceActivity.java"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/Observer<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;


# direct methods
.method constructor <init>(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)V
    .locals 0

    .line 637
    iput-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$4;->this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Ljava/lang/Integer;)V
    .locals 1

    .line 640
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 641
    iget-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$4;->this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    invoke-virtual {p1}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->finish()V

    :cond_0
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 637
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$4;->onChanged(Ljava/lang/Integer;)V

    return-void
.end method
