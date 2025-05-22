.class Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$43;
.super Ljava/lang/Object;
.source "ShipMainActivity.java"

# interfaces
.implements Lcom/powervision/gcs/view/SonarParamQuickSetView$OnSonarParamChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)V
    .locals 0

    .line 5029
    iput-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$43;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMuteChanged(Z)V
    .locals 0

    return-void
.end method

.method public onSeekBarChanged(I)V
    .locals 1

    .line 5032
    sput p1, Lcom/powervision/gcs/utils/SonarStateHelper;->sensivity:I

    .line 5033
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$43;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object v0, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->sonarWindowView:Lcom/powervision/gcs/view/SonarWindowView;

    if-eqz v0, :cond_0

    .line 5034
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$43;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object v0, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->sonarWindowView:Lcom/powervision/gcs/view/SonarWindowView;

    invoke-virtual {v0, p1}, Lcom/powervision/gcs/view/SonarWindowView;->changeSen(I)V

    :cond_0
    return-void
.end method

.method public onShowFishChanged(Z)V
    .locals 0

    .line 5041
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$43;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object p1, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->sonarWindowView:Lcom/powervision/gcs/view/SonarWindowView;

    if-eqz p1, :cond_0

    .line 5042
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$43;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object p1, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->sonarWindowView:Lcom/powervision/gcs/view/SonarWindowView;

    invoke-virtual {p1}, Lcom/powervision/gcs/view/SonarWindowView;->fishViewInvalide()V

    :cond_0
    return-void
.end method
