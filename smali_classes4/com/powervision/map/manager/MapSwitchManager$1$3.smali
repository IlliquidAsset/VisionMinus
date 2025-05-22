.class Lcom/powervision/map/manager/MapSwitchManager$1$3;
.super Ljava/lang/Object;
.source "MapSwitchManager.java"

# interfaces
.implements Lcom/powervision/base/utils/DialogUtils$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/map/manager/MapSwitchManager$1;->onComplete()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/powervision/map/manager/MapSwitchManager$1;


# direct methods
.method constructor <init>(Lcom/powervision/map/manager/MapSwitchManager$1;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lcom/powervision/map/manager/MapSwitchManager$1$3;->this$1:Lcom/powervision/map/manager/MapSwitchManager$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 165
    iget-object p1, p0, Lcom/powervision/map/manager/MapSwitchManager$1$3;->this$1:Lcom/powervision/map/manager/MapSwitchManager$1;

    iget-object p1, p1, Lcom/powervision/map/manager/MapSwitchManager$1;->this$0:Lcom/powervision/map/manager/MapSwitchManager;

    invoke-static {p1}, Lcom/powervision/map/manager/MapSwitchManager;->access$100(Lcom/powervision/map/manager/MapSwitchManager;)V

    return-void
.end method
