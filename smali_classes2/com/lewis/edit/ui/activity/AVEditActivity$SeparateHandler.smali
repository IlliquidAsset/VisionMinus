.class Lcom/lewis/edit/ui/activity/AVEditActivity$SeparateHandler;
.super Lcom/powervision/base/base/BaseHandleReference;
.source "AVEditActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lewis/edit/ui/activity/AVEditActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SeparateHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/powervision/base/base/BaseHandleReference<",
        "Lcom/lewis/edit/ui/activity/AVEditActivity;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/lewis/edit/ui/activity/AVEditActivity;)V
    .locals 0

    .line 1912
    invoke-direct {p0, p1}, Lcom/powervision/base/base/BaseHandleReference;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public referenceHandleMessage(Lcom/lewis/edit/ui/activity/AVEditActivity;Landroid/os/Message;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 1918
    iget p2, p2, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_0

    .line 1919
    invoke-static {p1}, Lcom/lewis/edit/ui/activity/AVEditActivity;->access$800(Lcom/lewis/edit/ui/activity/AVEditActivity;)Lcom/lewis/edit/widgets/VideoSeparateLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1920
    invoke-static {p1}, Lcom/lewis/edit/ui/activity/AVEditActivity;->access$800(Lcom/lewis/edit/ui/activity/AVEditActivity;)Lcom/lewis/edit/widgets/VideoSeparateLayout;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/lewis/edit/widgets/VideoSeparateLayout;->workRvScrollFun(I)V

    :cond_0
    return-void
.end method

.method public bridge synthetic referenceHandleMessage(Ljava/lang/Object;Landroid/os/Message;)V
    .locals 0

    .line 1910
    check-cast p1, Lcom/lewis/edit/ui/activity/AVEditActivity;

    invoke-virtual {p0, p1, p2}, Lcom/lewis/edit/ui/activity/AVEditActivity$SeparateHandler;->referenceHandleMessage(Lcom/lewis/edit/ui/activity/AVEditActivity;Landroid/os/Message;)V

    return-void
.end method
