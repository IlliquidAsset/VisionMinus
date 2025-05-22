.class Lcom/powervision/map/manager/MapSwitchManager$1$2;
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

    .line 150
    iput-object p1, p0, Lcom/powervision/map/manager/MapSwitchManager$1$2;->this$1:Lcom/powervision/map/manager/MapSwitchManager$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 153
    iget-object p1, p0, Lcom/powervision/map/manager/MapSwitchManager$1$2;->this$1:Lcom/powervision/map/manager/MapSwitchManager$1;

    iget-object p1, p1, Lcom/powervision/map/manager/MapSwitchManager$1;->this$0:Lcom/powervision/map/manager/MapSwitchManager;

    invoke-static {p1}, Lcom/powervision/map/manager/MapSwitchManager;->access$000(Lcom/powervision/map/manager/MapSwitchManager;)Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
