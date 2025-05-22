.class Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment$2;
.super Ljava/lang/Object;
.source "ShipSonarSetFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->initViewValue()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;)V
    .locals 0

    .line 200
    iput-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment$2;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    .line 204
    invoke-static {p1}, Lcom/powervision/gcs/utils/GeoLogUtils;->setLogEnable(Z)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 207
    invoke-static {p1}, Lcom/powervision/gcs/utils/GeoLogUtils;->setLogEnable(Z)V

    :goto_0
    return-void
.end method
