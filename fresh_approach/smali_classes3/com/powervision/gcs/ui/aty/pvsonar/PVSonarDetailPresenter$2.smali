.class Lcom/powervision/gcs/ui/aty/pvsonar/PVSonarDetailPresenter$2;
.super Ljava/lang/Object;
.source "PVSonarDetailPresenter.java"

# interfaces
.implements Lcom/powervision/gcs/mina/HandlerEvent$OnSonarTemperatureHandlerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/ui/aty/pvsonar/PVSonarDetailPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/ui/aty/pvsonar/PVSonarDetailPresenter;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/ui/aty/pvsonar/PVSonarDetailPresenter;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/powervision/gcs/ui/aty/pvsonar/PVSonarDetailPresenter$2;->this$0:Lcom/powervision/gcs/ui/aty/pvsonar/PVSonarDetailPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTemperatureHandler(I)V
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/pvsonar/PVSonarDetailPresenter$2;->this$0:Lcom/powervision/gcs/ui/aty/pvsonar/PVSonarDetailPresenter;

    invoke-static {v0}, Lcom/powervision/gcs/ui/aty/pvsonar/PVSonarDetailPresenter;->access$000(Lcom/powervision/gcs/ui/aty/pvsonar/PVSonarDetailPresenter;)I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 79
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/pvsonar/PVSonarDetailPresenter$2;->this$0:Lcom/powervision/gcs/ui/aty/pvsonar/PVSonarDetailPresenter;

    invoke-static {v0, p1}, Lcom/powervision/gcs/ui/aty/pvsonar/PVSonarDetailPresenter;->access$002(Lcom/powervision/gcs/ui/aty/pvsonar/PVSonarDetailPresenter;I)I

    .line 80
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/pvsonar/PVSonarDetailPresenter$2;->this$0:Lcom/powervision/gcs/ui/aty/pvsonar/PVSonarDetailPresenter;

    invoke-static {v0}, Lcom/powervision/gcs/ui/aty/pvsonar/PVSonarDetailPresenter;->access$100(Lcom/powervision/gcs/ui/aty/pvsonar/PVSonarDetailPresenter;)Lcom/powervision/gcs/ui/aty/pvsonar/PVSonarDetailContract$View;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/powervision/gcs/ui/aty/pvsonar/PVSonarDetailContract$View;->setSonarTemperature(I)V

    :cond_0
    return-void
.end method
