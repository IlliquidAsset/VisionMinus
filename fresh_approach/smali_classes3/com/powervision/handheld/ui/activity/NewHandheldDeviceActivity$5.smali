.class Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$5;
.super Ljava/lang/Object;
.source "NewHandheldDeviceActivity.java"

# interfaces
.implements Lcom/powervision/base/views/HPickerView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;


# direct methods
.method constructor <init>(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)V
    .locals 0

    .line 690
    iput-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$5;->this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelect(Ljava/lang/String;I)V
    .locals 2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    return-void

    .line 696
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "preItem = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$5;->this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    invoke-static {v1}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->access$500(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "   item = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 697
    iget-object p2, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$5;->this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    invoke-static {p2}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->access$500(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 698
    iget-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$5;->this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    invoke-static {p1}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->access$600(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)Lcom/powervision/base/views/HPickerView;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/powervision/base/views/HPickerView;->setCallBackResult(Z)V

    return-void

    .line 702
    :cond_1
    iget-object p2, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$5;->this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    invoke-virtual {p2}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/powervision/handheld/R$string;->AP03_DV_MediaLib_3:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    iget-object p2, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$5;->this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    invoke-virtual {p2}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/powervision/handheld/R$string;->AP03_DV_MediaLib_2:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_0

    .line 706
    :cond_2
    iget-object p2, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$5;->this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    invoke-static {p2, p1}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->access$800(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;Ljava/lang/String;)V

    goto :goto_1

    .line 703
    :cond_3
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "item = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 704
    iget-object p2, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$5;->this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    invoke-static {p2, p1}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->access$700(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;Ljava/lang/String;)V

    :goto_1
    return-void
.end method
