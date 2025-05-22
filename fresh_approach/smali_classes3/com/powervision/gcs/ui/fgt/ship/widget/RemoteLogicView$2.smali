.class Lcom/powervision/gcs/ui/fgt/ship/widget/RemoteLogicView$2;
.super Ljava/lang/Object;
.source "RemoteLogicView.java"

# interfaces
.implements Lcom/powervision/natives/callback/RemoteControlCallback$RemoteControlParamListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/ui/fgt/ship/widget/RemoteLogicView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/ui/fgt/ship/widget/RemoteLogicView;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/ui/fgt/ship/widget/RemoteLogicView;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/widget/RemoteLogicView$2;->this$0:Lcom/powervision/gcs/ui/fgt/ship/widget/RemoteLogicView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$onRemoteControlSetSuccess$0()V
    .locals 0

    .line 145
    invoke-static {}, Lcom/powervision/gcs/utils/ProgressDialogUtils;->dismissDialog()V

    return-void
.end method


# virtual methods
.method public onRemoteControlGetSuccess(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "PV_RC_MODE"

    .line 173
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 175
    instance-of p1, p2, Ljava/lang/Long;

    if-eqz p1, :cond_0

    .line 176
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->intValue()I

    move-result p1

    goto :goto_0

    .line 177
    :cond_0
    instance-of p1, p2, Ljava/lang/Integer;

    if-eqz p1, :cond_1

    .line 178
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    .line 180
    :cond_1
    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->intValue()I

    move-result p1

    .line 182
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onRemoteControlGetSuccess: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "RemoteLogicView"

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    invoke-static {p1}, Lcom/powervision/gcs/utils/SpStore;->setRemoteCurrentMode(I)V

    .line 185
    iget-object p2, p0, Lcom/powervision/gcs/ui/fgt/ship/widget/RemoteLogicView$2;->this$0:Lcom/powervision/gcs/ui/fgt/ship/widget/RemoteLogicView;

    invoke-static {p2, p1}, Lcom/powervision/gcs/ui/fgt/ship/widget/RemoteLogicView;->access$200(Lcom/powervision/gcs/ui/fgt/ship/widget/RemoteLogicView;I)V

    :cond_2
    return-void
.end method

.method public onRemoteControlGetTimeout(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 193
    invoke-static {}, Lcom/powervision/gcs/ui/fgt/ship/widget/RemoteLogicView;->access$300()Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/powervision/gcs/ui/fgt/ship/widget/RemoteLogicView$2$2;

    invoke-direct {p2, p0}, Lcom/powervision/gcs/ui/fgt/ship/widget/RemoteLogicView$2$2;-><init>(Lcom/powervision/gcs/ui/fgt/ship/widget/RemoteLogicView$2;)V

    const-wide/16 v0, 0x1388

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onRemoteControlSetSuccess(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    const-string v0, "PV_RC_MODE"

    .line 130
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 132
    instance-of p1, p2, Ljava/lang/Long;

    if-eqz p1, :cond_0

    .line 133
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->intValue()I

    move-result p1

    goto :goto_0

    .line 134
    :cond_0
    instance-of p1, p2, Ljava/lang/Integer;

    if-eqz p1, :cond_1

    .line 135
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    .line 137
    :cond_1
    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->intValue()I

    move-result p1

    .line 139
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onRemoteControlSetSuccess: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "RemoteLogicView"

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-object p2, p0, Lcom/powervision/gcs/ui/fgt/ship/widget/RemoteLogicView$2;->this$0:Lcom/powervision/gcs/ui/fgt/ship/widget/RemoteLogicView;

    invoke-static {p2}, Lcom/powervision/gcs/ui/fgt/ship/widget/RemoteLogicView;->access$000(Lcom/powervision/gcs/ui/fgt/ship/widget/RemoteLogicView;)Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-static {p2}, Lcom/powervision/gcs/utils/SpStore;->setRemoteRockerMode(I)V

    .line 142
    iget-object p2, p0, Lcom/powervision/gcs/ui/fgt/ship/widget/RemoteLogicView$2;->this$0:Lcom/powervision/gcs/ui/fgt/ship/widget/RemoteLogicView;

    invoke-static {p2, p1}, Lcom/powervision/gcs/ui/fgt/ship/widget/RemoteLogicView;->access$200(Lcom/powervision/gcs/ui/fgt/ship/widget/RemoteLogicView;I)V

    .line 144
    invoke-static {}, Lcom/powervision/gcs/ui/fgt/ship/widget/RemoteLogicView;->access$300()Landroid/os/Handler;

    move-result-object p1

    sget-object p2, Lcom/powervision/gcs/ui/fgt/ship/widget/-$$Lambda$RemoteLogicView$2$-xzmC_4JgD4OeU8PnyKZxse-dZk;->INSTANCE:Lcom/powervision/gcs/ui/fgt/ship/widget/-$$Lambda$RemoteLogicView$2$-xzmC_4JgD4OeU8PnyKZxse-dZk;

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void
.end method

.method public onRemoteControlSetTimeout(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 157
    invoke-static {}, Lcom/powervision/gcs/ui/fgt/ship/widget/RemoteLogicView;->access$300()Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/powervision/gcs/ui/fgt/ship/widget/RemoteLogicView$2$1;

    invoke-direct {p2, p0}, Lcom/powervision/gcs/ui/fgt/ship/widget/RemoteLogicView$2$1;-><init>(Lcom/powervision/gcs/ui/fgt/ship/widget/RemoteLogicView$2;)V

    const-wide/16 v0, 0x1388

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
