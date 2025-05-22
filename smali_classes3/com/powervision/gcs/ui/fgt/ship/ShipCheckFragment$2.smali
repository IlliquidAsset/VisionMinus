.class Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment$2;
.super Ljava/lang/Object;
.source "ShipCheckFragment.java"

# interfaces
.implements Lcom/powervision/natives/callback/RemoteControlCallback$RemoteControlParamListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment;)V
    .locals 0

    .line 200
    iput-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment$2;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRemoteControlGetSuccess(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRemoteControlGetSuccess: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "PV_RC_MODE"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ShipCheckFragment"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 234
    instance-of p1, p2, Ljava/lang/Long;

    if-eqz p1, :cond_0

    .line 235
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->intValue()I

    move-result p1

    goto :goto_0

    .line 236
    :cond_0
    instance-of p1, p2, Ljava/lang/Float;

    if-eqz p1, :cond_1

    .line 237
    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->intValue()I

    move-result p1

    goto :goto_0

    .line 239
    :cond_1
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 242
    :goto_0
    iget-object p2, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment$2;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment;

    invoke-static {p2, p1}, Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment;->access$000(Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment;I)V

    :cond_2
    return-void
.end method

.method public onRemoteControlGetTimeout(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 248
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onRemoteControlGetTimeout: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "PV_RC_MODE"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ShipCheckFragment"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    invoke-static {}, Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment;->access$100()Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment$2$2;

    invoke-direct {p2, p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment$2$2;-><init>(Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment$2;)V

    const-wide/16 v0, 0x1388

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onRemoteControlSetSuccess(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRemoteControlSetSuccess: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "PV_RC_MODE"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ShipCheckFragment"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 206
    instance-of p1, p2, Ljava/lang/Long;

    if-eqz p1, :cond_0

    .line 207
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->intValue()I

    move-result p1

    goto :goto_0

    .line 208
    :cond_0
    instance-of p1, p2, Ljava/lang/Float;

    if-eqz p1, :cond_1

    .line 209
    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->intValue()I

    move-result p1

    goto :goto_0

    .line 211
    :cond_1
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 214
    :goto_0
    iget-object p2, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment$2;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment;

    invoke-static {p2, p1}, Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment;->access$000(Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment;I)V

    :cond_2
    return-void
.end method

.method public onRemoteControlSetTimeout(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 220
    invoke-static {}, Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment;->access$100()Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment$2$1;

    invoke-direct {p2, p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment$2$1;-><init>(Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment$2;)V

    const-wide/16 v0, 0x1388

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
