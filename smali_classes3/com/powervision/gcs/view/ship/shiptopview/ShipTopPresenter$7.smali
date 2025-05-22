.class Lcom/powervision/gcs/view/ship/shiptopview/ShipTopPresenter$7;
.super Ljava/lang/Object;
.source "ShipTopPresenter.java"

# interfaces
.implements Lcom/powervision/natives/callback/RemoteControlCallback$Dl01BSOperListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/view/ship/shiptopview/ShipTopPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/view/ship/shiptopview/ShipTopPresenter;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/view/ship/shiptopview/ShipTopPresenter;)V
    .locals 0

    .line 459
    iput-object p1, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopPresenter$7;->this$0:Lcom/powervision/gcs/view/ship/shiptopview/ShipTopPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dl01BSOper(IILjava/lang/String;)V
    .locals 2

    if-nez p1, :cond_2

    .line 464
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "NA"

    invoke-static {p3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 468
    :cond_0
    :try_start_0
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const-string p2, "lzqw4_dl01_g"

    .line 469
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " shiptop value "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    iget-object p2, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopPresenter$7;->this$0:Lcom/powervision/gcs/view/ship/shiptopview/ShipTopPresenter;

    invoke-static {p2}, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopPresenter;->access$000(Lcom/powervision/gcs/view/ship/shiptopview/ShipTopPresenter;)Lcom/powervision/gcs/view/ship/shiptopview/ShipTopTask$View;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopTask$View;->updateRemoteWifiRssi(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 465
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopPresenter$7;->this$0:Lcom/powervision/gcs/view/ship/shiptopview/ShipTopPresenter;

    invoke-static {p1}, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopPresenter;->access$000(Lcom/powervision/gcs/view/ship/shiptopview/ShipTopPresenter;)Lcom/powervision/gcs/view/ship/shiptopview/ShipTopTask$View;

    move-result-object p1

    const/16 p2, -0x3e8

    invoke-interface {p1, p2}, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopTask$View;->updateRemoteWifiRssi(I)V

    :catch_0
    :cond_2
    :goto_1
    return-void
.end method
