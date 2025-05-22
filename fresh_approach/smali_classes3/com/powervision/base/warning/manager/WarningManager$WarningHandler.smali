.class public Lcom/powervision/base/warning/manager/WarningManager$WarningHandler;
.super Lcom/powervision/base/base/BaseHandleReference;
.source "WarningManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/base/warning/manager/WarningManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WarningHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/powervision/base/base/BaseHandleReference<",
        "Lcom/powervision/base/warning/manager/WarningManager;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/powervision/base/warning/manager/WarningManager;)V
    .locals 0

    .line 79
    invoke-direct {p0, p1}, Lcom/powervision/base/base/BaseHandleReference;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public referenceHandleMessage(Lcom/powervision/base/warning/manager/WarningManager;Landroid/os/Message;)V
    .locals 2

    .line 84
    iget v0, p2, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    .line 85
    iget-object p2, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p2, Lcom/powervision/base/warning/WarningAutoData;

    .line 86
    invoke-static {p1}, Lcom/powervision/base/warning/manager/WarningManager;->access$000(Lcom/powervision/base/warning/manager/WarningManager;)Lcom/google/android/flexbox/FlexboxLayout;

    move-result-object v0

    invoke-virtual {p2}, Lcom/powervision/base/warning/WarningAutoData;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/flexbox/FlexboxLayout;->removeView(Landroid/view/View;)V

    .line 87
    invoke-static {p1}, Lcom/powervision/base/warning/manager/WarningManager;->access$100(Lcom/powervision/base/warning/manager/WarningManager;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/powervision/base/warning/WarningAutoData;->getWarning()Lcom/powervision/base/warning/HoverMessage;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 88
    invoke-static {p1}, Lcom/powervision/base/warning/manager/WarningManager;->access$200(Lcom/powervision/base/warning/manager/WarningManager;)Lcom/powervision/base/warning/manager/WarningManager$OnWarningCallback;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 89
    invoke-static {p1}, Lcom/powervision/base/warning/manager/WarningManager;->access$200(Lcom/powervision/base/warning/manager/WarningManager;)Lcom/powervision/base/warning/manager/WarningManager$OnWarningCallback;

    move-result-object p1

    invoke-virtual {p2}, Lcom/powervision/base/warning/WarningAutoData;->getWarning()Lcom/powervision/base/warning/HoverMessage;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/powervision/base/warning/manager/WarningManager$OnWarningCallback;->closeWarnOnTop(Lcom/powervision/base/warning/HoverMessage;)V

    goto :goto_0

    .line 91
    :cond_0
    iget v0, p2, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 92
    iget-object p2, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p2, Lcom/powervision/base/warning/HoverMessage;

    .line 93
    invoke-static {p1}, Lcom/powervision/base/warning/manager/WarningManager;->access$200(Lcom/powervision/base/warning/manager/WarningManager;)Lcom/powervision/base/warning/manager/WarningManager$OnWarningCallback;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 94
    invoke-static {p1}, Lcom/powervision/base/warning/manager/WarningManager;->access$200(Lcom/powervision/base/warning/manager/WarningManager;)Lcom/powervision/base/warning/manager/WarningManager$OnWarningCallback;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/powervision/base/warning/manager/WarningManager$OnWarningCallback;->closeWarnOnTop(Lcom/powervision/base/warning/HoverMessage;)V

    goto :goto_0

    .line 96
    :cond_1
    iget v0, p2, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 97
    iget-object p2, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p2, Lcom/powervision/base/warning/HoverMessage;

    .line 98
    invoke-static {p1, p2}, Lcom/powervision/base/warning/manager/WarningManager;->access$300(Lcom/powervision/base/warning/manager/WarningManager;Lcom/powervision/base/warning/HoverMessage;)V

    goto :goto_0

    .line 99
    :cond_2
    iget v0, p2, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 100
    iget-object p2, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p2, Lcom/powervision/base/warning/HoverMessage;

    .line 101
    invoke-static {p1, p2}, Lcom/powervision/base/warning/manager/WarningManager;->access$400(Lcom/powervision/base/warning/manager/WarningManager;Lcom/powervision/base/warning/HoverMessage;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public bridge synthetic referenceHandleMessage(Ljava/lang/Object;Landroid/os/Message;)V
    .locals 0

    .line 75
    check-cast p1, Lcom/powervision/base/warning/manager/WarningManager;

    invoke-virtual {p0, p1, p2}, Lcom/powervision/base/warning/manager/WarningManager$WarningHandler;->referenceHandleMessage(Lcom/powervision/base/warning/manager/WarningManager;Landroid/os/Message;)V

    return-void
.end method
